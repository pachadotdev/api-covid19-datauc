# Readme Data UC

La idea de esta API es **facilitar** la consulta de los datos proporcionados por el Ministerio de Ciencia. **No** hay cambios ni verificaciones sobre las cifras reportadas en los datos originales.

Los cambios sobre los datos originales consisten en transformarlos para llevarlos a una estructura de filas y columnas conocida como [tidy data](https://es.r4ds.hadley.nz/datos-ordenados.html) (datos ordenados).

La API se puede consultar en http://coronavirus-api.mat.uc.cl/.

## Datos disponibles

Ver documentación oficial más abajo

- [x] Producto 1
- [x] Producto 2
- [x] Producto 3
- [x] Producto 4
- [x] Producto 5
- [x] Producto 6
- [x] Producto 7
- [x] Producto 8
- [x] Producto 9
- [x] Producto 10
- [x] Producto 11 (¿es igual a producto 4 según los datos?)
- [x] Producto 12 (¿es igual a producto 7 según los datos?)
- [x] Producto 13
- [x] Producto 14
- [x] Producto 15
- [x] Producto 16
- [x] Producto 17
- [x] Producto 18
- [x] Producto 19
- [ ] Producto 20

## Consideraciones

- Requiere una versión de `plumber::` que aún no está en CRAN pero se puede instalar usando `devtools::install_github("pachamaltese/plumber", ref = "csv-serializer")` 
- Esto se debe a que, de momento la versión en CRAN de `plumber::`, tiene salida JSON pero no CSV

# Readme Original Ministerio de Ciencia

## Datos-COVID19

El objetivo de la Mesa de Datos COVID-19 liderada por el Ministerio de Ciencia, Tecnología, Conocimiento e Innovación es disponer la información epidemiológica de nuestro país para promover el uso de datos para investigación científica, clínica y para soluciones innovadoras que contribuyan a la toma de decisiones de las autoridades y la ciudadanía frente a esta pandemia. Como primer resultado de este equipo técnico, se disponen los datos epidemiológicos provenientes del Ministerio de Salud (MINSAL), documentados y abiertos para el análisis de la comunidad, en concordancia con la Ley Nº 19.628. 

Ver http://www.minciencia.gob.cl/COVID19 para más información.

## Data Products

[data product 1: Casos totales por comuna incremental](output/producto1): archivo con valores separados por coma (csv) que concatena historia de publicaciones de MINSAL sobre casos totales por comuna. Contiene los campos 'Región', 'Comuna', 'Población', '[fecha]', donde la última columna tiene los 'Casos Confirmados' reportados en cada publicación. **Nota: previo a 15/4 no se reportaban casos por parte de MINSAL en comunas con pocos contagiados para proteger identidad**

[data product 2: Casos totales por comuna](output/producto2) (un archivo por informe): archivos con valores separados por coma (csv) con la información a nivel comunal por cada informe publicado. Cada archivo contiene los campos 'Región', 'Comuna', 'Población', 'Casos Confirmados'.**Nota: previo a 15/4 no se reportaban por parte de MINSAL casos en comunas con pocos contagiados para proteger identidad**

[data product 3: Casos totales por región incremental](output/producto3): archivo con valores separados por coma (csv) que concatena historia de publicaciones de casos totales por parte de MINSAL. Contiene los campos 'Región', '[fecha]', este último con el valor de la columna 'Casos totales' reportados por el MINSAL diariamente.

[data product 4: Casos totales por región](output/producto4) (un archivo por informe): archivos con valores separados por coma (csv) con la información a nivel regional publicada diariamente por MINSAL, las columnas varían a mediada que MINSAL dispone la información. Los campos para archivos posteriores a 31/3  son 'Región', 'Casos Nuevos', 'Casos totales', '%Casos Totales', 'Fallecidos'; para archivos anteriores son 'Región', 'Casos Nuevos', 'Casos totales', 'Recuperados'.  

[data product 5: Totales Nacionales Diarios](output/producto5): archivo con valores separados por coma (csv) con casos totales, nuevos, activos, recuperados y fallecidos totales con el valor diario reportado por el MINSAL. Contiene los campos 'Casos Nuevos', 'Casos totales', 'Casos nevos', 'Casos Activos', 'Casos Recuperados', 'Fallecidos', '[fecha]', donde la última columna tiene los valores reportados diariamente por MINSAL. **Nota: Casos activos en este reporte (a diferencia del reporte en el producto 19) corresponde al resultado de restar fallecidos y personas recuperadas al total de casos diagnosticados. Las personas recuperadas son casos que tras ser confirmados, ha estado en cuarentena pasando 14 días sin síntomas.**

[data product 6[contributed]: enriquecimiento del data product2](output/producto6/bulk): producto2 con todos los datos compilados en formato CSV y JSON, llamados producto2.csv y producto2.json respectivamente.

[data product 7: Exámenes PCR por región](output/producto7): 2 archivos con valores separados por coma (csv), el primero corresponde al reporte de exámenes PCR realizados, y el segundo, a la serie de tiempo de los datos anteriores, por región. Contiene los campos 'Región', 'Población', '[fecha]', este último con el valor de 'Exámenes PCR' reportados por el MINSAL diariamente. **Nota: el dato no refleja la cantidad de muestras por región, en algunos casos se toman más muestras que la capacidad de exámenes PCR que tiene la región, por ende se envían a laboratorios fuera de la región** 

[data product 8: Pacientes en UCI por región](output/producto8): 2 archivos con valores separados por coma (csv), el primero corresponde al reporte de hospitalizados UCI, y el segundo, a la serie de tiempo de los datos anteriores, por región. Contiene los campos ''Grupo de edad', '[fecha]', donde esta última columna contiene 'Pacientes en UCI' reportados por día.

[data product 9: Pacientes en UCI por grupo de edad](output/producto9): 2 archivos con valores separados por coma (csv), el primero corresponde al reporte de serie de tiempo de hospitalizados UCI, y el segundo, a la serie de tiempo de los datos anteriores, por grupo de edad. Contiene los campos 'Grupo de edad', '[fecha]', donde esta última columna contiene 'Pacientes en UCI' reportados por día por grupo de edad.

[data product 10: Fallecidos por grupo de edad](output/producto10): 2 archivos con valores separados por coma (csv), el primero corresponde al reporte de serie de tiempo de fallecidos, y el segundo, a la serie de tiempo de los datos anteriores, por rango etario. Contiene los campos ''Grupo de edad', '[fecha]', donde esta última columna contiene 'Fallecidos' reportados por día.

[data product 11 [contributed]: enriquecimiento del data product4](output/producto11/bulk): producto4 con todos los datos compilados en formato CSV y JSON, llamados producto4.csv y producto4.json respectivamente.

[data product 13: Casos nuevos por región incremental](output/producto13): 2 archivos con valores separados por coma (csv), el primero corresponde a casos nuevos por región con los valores diarios reportados por el MINSAL, y el segundo a la serie de tiempo de los datos anteriores. Contiene los campos 'Región', '[fecha]', donde esta última columna contiene 'Casos Nuevos' reportados por región.

[data product 14: Fallecidos por región incremental](output/producto14): 2 archivos con valores separados por coma (csv), el primero corresponde a casos fallecidos por región con los valores diarios reportados por el MINSAL, y el segundo a la serie de tiempo de los datos anteriores. Contiene los campos 'Región', '[fecha]', donde esta última columna contiene 'Fallecidos' reportados por región.

<<<<<<< HEAD
[data product 15: Fecha de inicio de síntomas de casos confirmados por comuna](output/producto15): 3 archivos con valores separados por coma (csv), el primero reporta el total de casos con inicio de síntomas por comuna, para casos confirmados por semana epidemiológica, el segundo la serie de tiempo de los datos anteriores y el tercero indica las fechas que marcan los inicios y términos de cada semana semana epidemiológica. El primer archivo contiene los campos 'Región', 'Comuna', 'Población', '[semana epidemiológica]', donde la última columna contiene el 'Total de casos con inicio de síntomas para casos confirmados' reportados en cada comuna, para cada semana epidemiológica. **Nota: acorde a lo informado por Epidemiología MINSAL, la fecha de inicio de síntomas corresponde al momento de la manifestación clínica de la enfermedad, y son provisorios a la fecha del último reporte, pues se van actualizando retroactivamente a medida que se confirman casos y evoluciona la investigación epidemiológica**
=======
[data product 15: Casos nuevos por fecha de inicio de síntomas por comuna](output/producto15): 3 archivos con valores separados por coma (csv), el primero reporta el total de casos nuevos por fecha inicio de síntomas por comuna, para casos confirmados por semana epidemiológica, el segundo la serie de tiempo de los datos anteriores y el tercero indica las fechas que marcan los inicios y términos de cada semana semana epidemiológica. El primer archivo contiene los campos 'Región', 'Comuna', 'Población', '[semana epidemiológica]', donde la última columna contiene el 'Total de casos nuevos con inicio de síntomas en esa semana para casos confirmados' reportados en cada comuna, para cada semana epidemiológica. **Nota: acorde a lo informado por Epidemiología MINSAL, la fecha de inicio de síntomas corresponde al momento de la manifestación clínica de la enfermedad, y son provisorios a la fecha del último reporte, pues se van actualizando retroactivamente a medida que se confirman casos y evoluciona la investigación epidemiológica**
>>>>>>> upstream/master

[data product 16: Casos por genero y grupo de edad](output/producto16): 2 archivos con valores separados por coma (csv), el primero corresponde a casos totales separados por genero y rango etario (valores reportados por el MINSAL), y el segundo a la serie de tiempo de los datos anteriores. Contiene los campos 'Grupo de Edad', 'Sexo', '[fecha]', donde esta última columna contiene 'Casos totales' reportada para un rango etario y sexo por informe epidemiológico.

[data product 17: PCR acumulado e informado en el último día por tipo de establecimientos](output/producto17): archivo con valores separados por coma (csv), corresponde al numero de test realizados por establecimiento, y al numero informado en las últimas 24 horas. Contiene los campos 'Tipo de establecimiento', 'exámenes' que contiene 2 categorías: 'realizados' para el total acumulado e 'informados en el último día', y '[fecha]' que contiene la cantidad reportada para ambas categorías.

[data product 18: Tasa de incidencia historica por comuna y total regional](output/producto18): archivo con valores separados por coma (csv), corresponde a la tasa de incidencia por comuna y total regional, reportado por el MINSAL. Contiene los campos 'Región', 'Comuna', 'Población', '[fecha]', donde esta última columna contiene la 'tasa de incidencia' reportada para comunas y total regional por informe epidemiológico.

[data product 19: Casos activos por fecha de inicio de síntomas y comuna](output/producto19): archivo con valores separados por coma (csv), corresponde a el total de personas que mantienen capacidad de contagio, reportado por el MINSAL. Contiene los campos 'Región', 'Comuna', 'Población', '[fecha]', donde la última columna tiene los 'Casos activos' reportados en cada publicación de Epidemiología. **Nota: Casos activos en este reporte (a diferencia del reporte en el producto 5) corresponde al resultado de la investigación epidemiológica y considera activos a casos durante los primeros 14 días después de la fecha de inicio de sus síntomas**

[data product 20: Ventiladores a nivel nacional](output/producto20): archivo con valores separados por coma (csv), corresponde a el total nacional de ventiladores, los ocupados y los disponibles reportado por el MINSAL. Contiene los campos 'Estado' (con valores total, disponibles, ocupados), '[fecha]', donde esta última columna contiene los valores reportados a nivel nacional.

[data product 21: Sintomas por Casos Confirmados e informado en el último día](output/producto21): 4 archivos con valores separados por coma (csv). 2 archivos corresponden a los síntomas informados por personas confirmadas con COVID-19, y 2 archivos a los síntomas informados por personas hospitalizadas por COVID-19, ambos en números acumulados. Contienen los campos 'Sintomas' y '[fecha]' que contiene la cantidad de casos que reportan cada síntoma. **Nota: No todos los informes de situación COVID - 19 de EPI MINSAL contienen información sobre los síntomas**.

[data product 22: Hospitalizados por grupo de edad](output/producto22): 2 archivos con valores separados por coma (csv), el primero corresponde al reporte de hospitalizados por grupo de edad, y el segundo, a la serie de tiempo de los datos anteriores. Contiene los campos 'Grupo de edad', '[fecha]', donde esta última columna contiene el número de 'Hospitalizados' reportados acumulados como resultado de la investigación epidemiológica.

[data product 23: Pacientes críticos](output/producto23): 2 archivos con valores separados por coma (csv), el primero corresponde al reporte diario de la cantidad de pacientes críticos, y el segundo, a la serie de tiempo de los datos anteriores. Contiene los campos 'Pacientes críticos', '[fecha]', donde esta última columna contiene el número reportado diariamente.

[data product 24: Hospitalización de pacientes en sistema integegrado](output/producto24): 2 archivos con valores separados por coma (csv), el primero corresponde al reporte diario de la cantidad de pacientes en camas Básicas, Media, UCI o en UTI, y el segundo, a la serie de tiempo de los datos anteriores. Contiene los campos 'Tipo de Cama' (con las categorías 'Básicas', 'Media', 'UCI', 'UTI', '[fecha]', donde esta última columna contiene el número de ocupación por día reportado por la Unidad de Gestión de Camas Críticas de MINSAL para cada categoría. 

**Nota: La fecha otorgada a cada reporte corresponde a la publicación por MINSAL. Habitualmente refleja el registro del día anterior, salvo que se indique lo contrario**


## Como funciona?

En cuanto a los archivos a nivel comunal: Transcribimos los datos publicados por el Ministerio de Salud en pdf en:
https://www.minsal.cl/nuevo-coronavirus-2019-ncov/informe-epidemiologico-covid-19/
A partir de esa transcripción se genera un archivo csv, ubicado en la carpeta input.
Este se procesa con el código en src, para generar los archivos csv en output.

En cuanto a los archivos a nivel regional: Hacemos scraping de tabla en https://www.minsal.cl/nuevo-coronavirus-2019-ncov/casos-confirmados-en-chile-covid-19/ y generamos archivo csv por día.

![dataUpdate](https://github.com/MinCiencia/Datos-COVID19/workflows/dataUpdate/badge.svg)

## Contacto
Si encuentras errores, por favor repórtalos [acá](https://github.com/MinCiencia/Datos-COVID19/issues). La automatización de este proceso y disposición de datos ha sido inicializada por el equipo del Data Observatory (http://www.dataobservatory.net), estan todos invitados a colaborar.
Si has creado una solución que permita facilitar el trabajo con estos datos, algún análisis, o simplemente tienes una solicitud de data product considerando los datos que MINSAL hace públicos hoy, escríbenos a darancibia@minciencia.gob.cl

## Agradecimientos

Geógrafo Virginia Behm - académica Escuela de Salud Pública U. Chile.

Miguel A. Bustos Valdebenito | Estudiante Dr. Ing. Mec. - U.Chile | Mtr. Ing. Ind. - UAI  | Ing. Civil y Ejec. Mec. - U. de Santiago

Annabella Zapata y Carlos Navarrete
