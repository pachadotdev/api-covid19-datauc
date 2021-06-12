library(arrow)
library(dplyr)

#* bienvenida
#* @get /
function() {
  list("¡Hola Mundo!",
  "Visita github.com/pachadotdev/api-covid19-datauc para ver la documentación,
  cómo aportar, código de conducta, código DOI y más.",
  "También nos puedes preguntar por Twitter al equipo @datauc_chile."
  )
}

#* producto1
#* @serializer csv
#* @get /casos_totales_comuna_incremental
function() {
  open_dataset("data/producto1") %>% collect()
}

#* producto2
#* @serializer csv
#* @get /casos_totales_comuna
function() {
  open_dataset("data/producto2") %>% collect()
}

#* producto3
#* @serializer csv
#* @get /casos_totales_region_incremental
function() {
  open_dataset("data/producto3") %>% collect()
}

#* producto4
#* @serializer csv
#* @get /casos_totales_region
function() {
  open_dataset("data/producto4") %>% collect()
}

#* producto5
#* @serializer csv
#* @get /totales_nacionales_diarios
function() {
  open_dataset("data/producto5") %>% collect()
}

#* producto6
#* @serializer csv
#* @get /casos_totales_comuna_enriquecido
function() {
  open_dataset("data/producto6") %>% collect()
}

#* producto7
#* @serializer csv
#* @get /examenes_pcr_region
function() {
  open_dataset("data/producto7") %>% collect()
}

#* producto8
#* @serializer csv
#* @get /pacientes_uci_region
function() {
  open_dataset("data/producto8") %>% collect()
}

#* producto9
#* @serializer csv
#* @get /pacientes_uci_grupo_edad
function() {
  open_dataset("data/producto9") %>% collect()
}

#* producto10
#* @serializer csv
#* @get /fallecidos_grupo_edad
function() {
  open_dataset("data/producto10") %>% collect()
}

#* producto11
#* @serializer csv
#* @get /casos_totales_region_enriquecido
function() {
  open_dataset("data/producto11") %>% collect()
}

#* producto12
#* @serializer csv
#* @get /examenes_pcr_region_enriquecido
function() {
  open_dataset("data/producto12") %>% collect()
}

#* producto13
#* @serializer csv
#* @get /casos_nuevos_region_incremental
function() {
  open_dataset("data/producto13") %>% collect()
}

#* producto14
#* @serializer csv
#* @get /fallecidos_region_incremental
function() {
  open_dataset("data/producto14") %>% collect()
}

#* producto15
#* @serializer csv
#* @get /casos_nuevos_sintomas_comuna
function() {
  open_dataset("data/producto15") %>% collect()
}

#* producto16
#* @serializer csv
#* @get /casos_genero_grupo_edad
function() {
  open_dataset("data/producto16") %>% collect()
}

#* producto17
#* @serializer csv
#* @get /pcr_acumulado_establecimiendo
function() {
  open_dataset("data/producto17") %>% collect()
}

#* producto18
#* @serializer csv
#* @get /incidencia_comuna_total_regional
function() {
  open_dataset("data/producto18") %>% collect()
}

#* producto19
#* @serializer csv
#* @get /casos_activos_sintomas_comuna
function() {
  open_dataset("data/producto19") %>% collect()
}

#* producto20
#* @serializer csv
#* @get /ventiladores_nacional
function() {
  open_dataset("data/producto20") %>% collect()
}

#* producto21
#* @serializer csv
#* @get /casos_confirmados_sintomas
function() {
  open_dataset("data/producto21") %>% collect()
}

#* producto22
#* @serializer csv
#* @get /hospitalizados_grupo_edad
function() {
  open_dataset("data/producto22") %>% collect()
}

#* producto23
#* @serializer csv
#* @get /pacientes_criticos
function() {
  open_dataset("data/producto23") %>% collect()
}

#* producto24
#* @serializer csv
#* @get /hospitalizacion_sistema_integrado
function() {
  open_dataset("data/producto24") %>% collect()
}
