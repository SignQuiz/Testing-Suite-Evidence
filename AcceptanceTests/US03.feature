Feature: Crear cuenta de tipo especialista

    Como especialista en el lenguaje de señas quiero crear una cuenta de tipo especialista para enseñar el lenguaje de señas

    Scenario: Creación de cuenta de tipo especialista exitosa
    
    Given que me encuentro en la sección de crear cuenta de tipo especialista
    When envié la información acerca de mi experiencia profesional
    Then luego de unos días me enviaran un mensaje de que estoy dentro y accederé a las funciones de especialista de contenido

    Example: Datos de entrada
        |"Elija su tipo de cuenta"|
        | Aprendiz | Especialista |
        | Aprendiz | "Especialista"|
        |"Ingrese sus datos"|
        | “Username” | “Password” | 
        | JuanÑoqui  | JuanÑoqui123 | 
        | "Ingrese su informacion profesional" |
        | El Centro Peruano de Audición, Lenguaje y Aprendizaje - CPAL |
    Example: Datos de salida
        |Mensaje de confirmacion de registro|
        |"Creacion de cuenta exitosa"|
        |"Se admitio su ingreso al programa de especialistas"|

    Scenario: Creación de cuenta de tipo especialista especialista denegada

    Given que me encuentro en la sección de crear cuenta de tipo especialista 
    When envié información básica y la información acerca de mi experiencia profesional
    Then luego de unos días me enviaran un mensaje de que no me admitieron dentro del programa de especialistas
    
     Example: Datos de entrada
        |"Elija su tipo de cuenta"|
        | Aprendiz | Especialista |
        | Aprendiz | "Especialista"|
        |"Ingrese sus datos"|
        | “Username” | “Password” | 
        | JuanÑoqui  | JuanÑoqui123 | 
        | "Ingrese su informacion profesional" |
        | " Instituto para personas sordomudas" |
    Example: Datos de salida
        |Mensaje de error de registro|
        |"Ingresaste datos erroneos, Intenta de nuevo"|
        |"No se admitio su ingreso al programa de especialistas"|