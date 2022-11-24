Feature: Acceder a evaluaciones

   Como aprendiz en lenguaje de señas, quiero acceder a las evaluaciones del material educativo para rendir evaluacion en el lenguaje de señas 

   Scenario: Ingreso a la evaluación acerca de la lección de aprendizaje en la que estoy interesado con intentos disponibles
   
   Given que me encuentro en la sección de evaluaciones,
   When seleccione la evaluación de la lección en la que estoy interesado
   Then accederé a la evaluación y se mostrara en pantalla la cantidad de intentos que poseo

   Example: Seleccion de opcion para acceder a evaluaciones donde se muestra los intentos disponibles
   |Menu principal|
   |Inicio|Ruta de aprendizaje|Material educativo|Estadísticas|"Evaluaciones"|Configuracion|
   |Evaluaciones|
   |Evaluacion sobre Abecedario de señas|Intentos disponibles : 2|
   
   Scenario:Ingreso a la evaluación acerca de la lección de aprendizaje en la que estoy interesado sin intentos disponibles

   Given que me encuentro en la sección de evaluaciones,
   When seleccione la evaluación de la lección en la que estoy interesado
   Then se mostrará en pantalla el mensaje: “Intentos disponibles insuficientes, acceda a versión Premium para intentos ilimitados”

   Example: Seleccion de opcion para acceder a evaluaciones donde se muestra los intentos disponibles insuficientes
   |Menu principal|
   |Inicio|Ruta de aprendizaje|Material educativo|Estadísticas|"Evaluaciones"|Configuracion|
   |Evaluaciones|
   |Evaluacion sobre Abecedario de señas|Intentos disponibles : 0|
   |Mensaje sobre acceder a cuenta premium|
   |"Intentos disponibles insuficientes, acceda a version premium para intentos ilimitados"|