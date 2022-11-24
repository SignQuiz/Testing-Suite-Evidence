Feature: Crear cuenta de tipo aprendiz

    Como aprendiz en el lenguaje de señas quiero crear una cuenta de tipo aprendiz para aprender el lenguaje de señas

    Scenario: Creación de cuenta 

    Given que me encuentro en la sección de crear cuenta de tipo aprendiz 
    When ingrese mi información requerida
    Then se mostrará en pantalla el mensaje “creación de cuenta exitosa”

    Example: Datos de entrada
        |"Elija su tipo de cuenta"|
        | Aprendiz | Especialista |
        | "Aprendiz" | Especialista |
        |"Ingrese sus datos"|
        | “Username” | “Password” | 
        | JuanÑoqui  | JuanÑoqui123 | 
    Example: Datos de salida
        |Mensaje de confirmacion de registro|
        |"Creacion de cuenta exitosa"|

   Scenario: Usuario brinda datos incompletos   

   Given que me encuentro en la sección de car cuenta de tipo aprendiz
   When ingrese datos incorrectos 
   Then se mostrará en la pantalla el mensaje “Ingresaste datos incorrectos… Intenta de nuevo”

    Example: Datos de entrada
        |"Elija su tipo de cuenta"|
        | Aprendiz | Especialista |
        |"Ingrese sus datos"|
        | “Username” | “Password” | 
        | "   " |  "   "| 
    Example: Datos de salida
        |Mensaje de error de registro|
        |"Ingresaste datos incompletos, Intenta de nuevo"|
