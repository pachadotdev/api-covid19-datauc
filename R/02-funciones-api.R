load("data/datos-ordenados.RData")

#* bienvenida
#* @get /
function() {
  list("¡Hola Mundo!",
  "Visita github.com/pachamaltese/api-covid19-datauc para ver la documentación,
  cómo aportar, código de conducta, código DOI y más.",
  "También nos puedes preguntar por Twitter, tanto al equipo @datauc_chile como
  a @pachamaltese."
  )
}

#* producto1
#* @serializer csv
#* @get /casos_totales_comuna_incremental
function() {
  producto1
}

#* producto2
#* @serializer csv
#* @get /casos_totales_comuna
function() {
  producto2
}

#* producto3
#* @serializer csv
#* @get /casos_totales_region_incremental
function() {
  producto3
}

#* producto4
#* @serializer csv
#* @get /casos_totales_region
function() {
  producto4
}

#* producto5
#* @serializer csv
#* @get /totales_nacionales_diarios
function() {
  producto5
}

#* producto6
#* @serializer csv
#* @get /casos_totales_comuna_enriquecido
function() {
  producto6
}

#* producto7
#* @serializer csv
#* @get /examenes_pcr_region
function() {
  producto7
}

#* producto8
#* @serializer csv
#* @get /pacientes_uci_region
function() {
  producto8
}

#* producto9
#* @serializer csv
#* @get /pacientes_uci_grupo_edad
function() {
  producto9
}

#* producto10
#* @serializer csv
#* @get /fallecidos_grupo_edad
function() {
  producto10
}

#* producto11
#* @serializer csv
#* @get /casos_totales_region_enriquecido
function() {
  producto11
}

#* producto12
#* @serializer csv
#* @get /examenes_pcr_region_enriquecido
function() {
  producto12
}

#* producto13
#* @serializer csv
#* @get /casos_nuevos_region_incremental
function() {
  producto13
}

#* producto14
#* @serializer csv
#* @get /fallecidos_region_incremental
function() {
  producto14
}

#* producto15
#* @serializer csv
#* @get /casos_nuevos_sintomas_comuna
function() {
  producto15
}

#* producto16
#* @serializer csv
#* @get /casos_genero_grupo_edad
function() {
  producto16
}

#* producto17
#* @serializer csv
#* @get /pcr_acumulado_establecimiendo
function() {
  producto17
}

#* producto18
#* @serializer csv
#* @get /incidencia_comuna_total_regional
function() {
  producto18
}

#* producto19
#* @serializer csv
#* @get /casos_activos_sintomas_comuna
function() {
  producto19
}

#* producto20
#* @serializer csv
#* @get /ventiladores_nacional
function() {
  producto20
}

#* producto21
#* @serializer csv
#* @get /casos_confirmados_sintomas
function() {
  producto21
}

#* producto22
#* @serializer csv
#* @get /hospitalizados_grupo_edad
function() {
  producto22
}

#* producto23
#* @serializer csv
#* @get /pacientes_criticos
function() {
  producto23
}

#* producto24
#* @serializer csv
#* @get /hospitalizacion_sistema_integrado
function() {
  producto24
}
