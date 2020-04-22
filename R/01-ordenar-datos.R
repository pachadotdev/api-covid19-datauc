# Paquetes ----

library(readr)
library(dplyr)
library(tidyr)
library(lubridate)
library(stringr)
library(purrr)

# Funciones y rutas ----

ordenar <- function(x) {
  read_csv(x) %>% 
    janitor::clean_names() %>% 
    pivot_longer(cols = starts_with("x"), names_to = "fecha", values_to = "casos") %>%
    mutate(fecha = str_remove(fecha, "x"),
           fecha = ymd(fecha)) %>%
    mutate(casos = str_remove(casos, "-"),
           casos = as.numeric(casos)) %>% 
    select(fecha, everything())
}

archivos_producto2 <- list.files("output/producto2", pattern = "csv", full.names = T)

archivos_producto4 <- list.files("output/producto4", pattern = "csv", full.names = T)

ordenar2 <- function(x, p = "producto2", i = 1, j = 10) {
  read_csv(x) %>% 
    janitor::clean_names() %>% 
    mutate(fecha = ymd(substr(gsub(paste0("output/", p, "/"), "", x), i, j))) %>% 
    select(fecha, everything())
}

# Outputs ----

producto1 <- ordenar("output/producto1/Covid-19.csv")

producto2 <- purrr::map_df(archivos_producto2, ordenar2)

producto3 <- ordenar("output/producto3/CasosTotalesCumulativo.csv")

producto4 <- purrr::map_df(archivos_producto4, ordenar2, p  = "producto4")

producto5 <- read_csv("output/producto5/TotalesNacionales.csv") %>% 
  janitor::clean_names() %>% 
  rename(grupo = fecha) %>%
  pivot_longer(cols = starts_with("x"), names_to = "fecha", values_to = "casos") %>%
  mutate(fecha = str_remove(fecha, "x"),
         fecha = ymd(fecha)) %>%
  mutate(casos = str_remove(casos, "-"),
         casos = as.numeric(casos))

producto6 <- read_csv("output/producto6/bulk/data.csv") %>% 
  janitor::clean_names() %>% 
  select(fecha, everything())
  
producto7 <- read_csv("output/producto7/PCR.csv") %>% 
  janitor::clean_names() %>% 
  mutate_if(is.numeric, as.character) %>% 
  pivot_longer(cols = starts_with("x"), names_to = "fecha",
               values_to = "casos") %>%
  mutate(fecha = str_remove(fecha, "x"),
         fecha = ymd(fecha)) %>%
  mutate(casos = str_remove(casos, "-"),
         casos = as.numeric(casos),
         poblacion = as.numeric(poblacion),
         codigo_region = as.numeric(codigo_region)) %>% 
  select(fecha, everything())

producto8 <- ordenar("output/producto8/UCI.csv")

producto9 <- ordenar("output/producto9/HospitalizadosUCIEtario.csv")

producto10 <- ordenar("output/producto10/FallecidosEtario.csv")

producto11 <- read_csv("output/producto11/bulk/producto4.csv") %>% 
  janitor::clean_names() %>% 
  select(fecha, everything())

producto12 <- read_csv("output/producto12/bulk/producto7.csv") %>% 
  janitor::clean_names() %>% 
  select(fecha, everything())

producto13 <- ordenar("output/producto13/CasosNuevosCumulativo.csv")

producto14 <- ordenar("output/producto14/FallecidosCumulativo.csv")

# revisar si cambia s16 en versiones futuras del archivo ----
# corregido en #56
# https://github.com/MinCiencia/Datos-COVID19/issues/56#event-3261409415

producto15 <- read_csv("output/producto15/FechaInicioSintomas.csv") %>% 
  janitor::clean_names() %>% 
  # rename(se16 = s16) %>% 
  pivot_longer(cols = starts_with("se"), names_to = "semana_epidemiologica", values_to = "casos")

producto15_2 <- read_csv("output/producto15/SemanasEpidemiologicas.csv") %>% 
  janitor::clean_names() %>% 
  pivot_longer(cols = starts_with("se"), names_to = "semana_epidemiologica", values_to = "casos") %>% 
  mutate(
    fecha = case_when(
      fecha == "Fin" ~ "fin_semana_epidemiologica",
      fecha == "Inicio" ~ "inicio_semana_epidemiologica"
    )
  ) %>% 
  spread(fecha, casos)

producto15 <- producto15 %>% 
  left_join(producto15_2) %>% 
  select(matches("semana"), everything()) %>% 
  arrange(inicio_semana_epidemiologica)

rm(producto15_2)

producto16 <- ordenar("output/producto16/CasosGeneroEtario.csv")

producto17 <- ordenar("output/producto17/PCREstablecimiento.csv")

producto18 <- ordenar("output/producto18/TasadeIncidencia.csv")

producto19 <- ordenar("output/producto19/CasosActivosPorComuna.csv")

producto20 <- ordenar("output/producto20/NumeroVentiladores.csv")

rm(archivos_producto2, archivos_producto4, ordenar, ordenar2)

save.image("data/datos-ordenados.RData")
