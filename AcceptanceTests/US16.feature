Feature: Visualizar estadistica del rendimiento de especialista

    Como especialista en el lenguaje de señas quiero observar las estadísticas de las evaluaciones para visualizar el progreso de su trabajo

    Scenario: Visualización de estadísticas de las evaluaciones y de material educativo

    Given que quiero ver la productividad y visualización de mis evaluaciones y material de aprendizaje.
    When marque la opcion estadísticas de rendimiento 
    Then se mostrará en la pantalla el cuadro estadístico cuantas personas realizaron sus evaluaciones como también cuantas personas visualizaron los materiales de aprendizaje   

    Example: Seleccion seccion estadisticas
    |Menu Principal Especialista|
    |Inicio|Ruta de aprendizaje|Evaluaciones|Material de aprendizaje|"Estadisticas"|Monetizacion|Configuracion|
    |Estadisticas|"Rendimiento"|
    |Rendimiento|
    |Total de evaluaciones realizadas : 45|
    |Total de horas visualizadas : 120|

    Scenario: Cuando no subí ninguna evaluación y material de aprendizaje  

    Given que no subí ninguna evaluación y material de aprendizaje y
    When ingrese a la sección de rendimiento
    Then no podré ver las estadísticas porque no están disponibles
    
    Example: Seleccion seccion estadisticas cuando no se subio ninguna evaluación y material de aprendizaje 
    |Menu Principal Especialista|
    |Inicio|Ruta de aprendizaje|Evaluaciones|Material de aprendizaje|"Estadisticas"|Monetizacion|Configuracion|
    |Estadisticas|"Rendimiento"|
    |Mensaje de que no se subio ninguna evaluacion y/o material de aprendizaje|
    |"No se subio ninguna evaluacion y/o material de aprendizaje no se puede vizualizar el rendimiento"|
