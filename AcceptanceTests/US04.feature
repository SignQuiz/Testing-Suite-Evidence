Feature: Iniciar sesion

    Como usuario quiero ingresar usando mi tipo cuenta previamente registrada para continuar con mi progreso educativo

    Scenario: Usuario inicia sesión de cuenta

    Given que me encuentro en la sección de ingreso de cuenta
    When ingrese mi información previamente registrada y selecciono mi tipo de cuenta y presiono el botón de “Iniciar sesión”
    Then ingresare a la aplicación con mi cuenta.

    Example: Datos de entrada
    |Inicio de sesion|
    |Ingrese Username|
    | "JuanÑoqui" |
    |Ingrese Password|
    | "JuanÑoqui123" |
    Example: Datos de salida
    |Mensaje de confirmacion de inicio de sesion|
    |"Se inicio sesion correctamente"|

    Scenario: Usuario brinda datos incompletos

    Given que me encuentro en la sección de ingreso de cuenta
    When ingrese mi información incompleta y presiono el botón de “Iniciar cuenta”
    Then la aplicación no me permitirá iniciar sesión y me muestra el mensaje “Ingresaste datos incompletos… Intenta de nuevo”

    Example: Datos de entrada
    |Inicio de sesion|
    |Ingrese Username|
    | "        " |
    |Ingrese Password|
    | "        " |
    Example: Datos de salida
    |Mensaje de error de inicio de sesion|
    |"Ingresaste datos incompletos, Intenta de nuevo"|

