Feature: Visualizar estadistica del rendimiento aprendiz

    Como aprendiz en el lenguaje de señas quiero ver mi rendimiento estadístico para poder mejorar en mi aprendizaje

    Scenario: Acceder a rendimiento  

    Given que después de rendir mi evaluación del material educativo y
    When ingrese a la sección de rendimiento 
    Then podré ver las estadísticas relacionadas con las evaluaciones realizadas
    
    Example: Seleccion de seccion rendimiento
    |Menu principal|
    |Inicio|Ruta de aprendizaje|Material educativo|"Estadísticas"|Evaluaciones|Configuracion|
    |Estadisticas|"Rendimiento"|
    |Evaluaciones realizadas : 1|
    |"Rendimiento en evaluacion de Abecedario en lenguaje de señas"|
    |Total de respuestas correctas : 15|
    |Total de respuestas incorrectas : 20|

    Scenario: Cuando no rendí evaluación 

    Given que no rendí la evaluación del material educativo y
    When ingrese a la sección de rendimiento
    Then no podre ver las estadísticas porque no están disponibles
    
    Example: Seleccion de seccion rendimiento cuando no se rindio ninguna evaluacion
    |Menu principal|
    |Inicio|Ruta de aprendizaje|Material educativo|"Estadísticas"|Evaluaciones|Configuracion|
    |Estadisticas|"Rendimiento"|
    |Mensaje que se no se rindio ninguna evaluacion|
    |"No se rindio ninguna evaluacion , no es posible ver su rendimiento"|