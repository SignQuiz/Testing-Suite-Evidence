Feature: Acceder al material educativo de lenguaje de señas

    Como aprendiz en lenguaje de señas quiero acceder a material educativo para aprender el lenguaje de señas

    Scenario: Acceder a material educativo  
    Given que me encuentro en el menú principal
    When ingrese a la sección de material de aprendizaje 
    Then voy a acceder a ruta de aprendizaje con las lecciones subidas por especialistas
     
    Example: Seleccion de opcion para acceder a material educativo y se selecciona un tema especifico
    |Menu principal|
    |Inicio|Ruta de aprendizaje|"Material educativo"|Estadísticas|Evaluaciones|Configuracion|
    |Material educativo|
    |"Abecedario en señas"|

    Scenario: Material educativo no disponible
    Given que me encuentro en el menú principal 
    When ingrese a la sección de material de aprendizaje 
    Then observo que no hay material disponible
    
    Example: Seleccion de opcion para acceder a material educativo y no hay material educativo disponible
    |Menu principal|
    |Inicio|Ruta de aprendizaje|"Material educativo"|Estadísticas|Evaluaciones|Configuracion|
    |Ruta de aprendizaje|
    |"No hay material educativo disponible"|