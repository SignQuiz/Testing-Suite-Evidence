Feature: Acceder al menu de opcion cuenta especialista

    Como especialista en lenguaje de señas quiero visualizar el menú de opciones para visualizar las funcionalidades necesarias 

    Scenario: Menu de opciones 

    Given que ya haya iniciado sesión en cuenta tipo especialista
    When se encuentre en el menú de opciones  
    Then se mostrará todo el menu de opciones para realizar y subir material en el lenguaje de señas “ruta de aprendizaje, elaborar evaluaciones, subir material de aprendizaje, estadísticas, monetización y cobro de comisión” 

    Example: Menu de opciones para cuenta tipo especialista
    |Menu Principal Especialista|
    |Inicio|Ruta de aprendizaje|Evaluaciones|Material de aprendizaje|Estadisticas|Monetizacion|Configuracion|

    Scenario: Especialista no ingreso con cuenta tipo especialista

    Given que no haya iniciado sesión tipo de cuenta especialista
    When se encuentre en el menú de opciones 
    Then no se mostrará el menú de opciones de un usuario especialista

    Example: Menu de opciones para cuenta tipo aprendiz
    |Menu principal|
    |Inicio|Ruta de aprendizaje|Material educativo|Estadísticas|Evaluaciones|Configuracion|