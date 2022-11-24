Feature: Acceder al menu de opciones cuenta aprendiz

    Como aprendiz en lenguaje de señas quiero visualizar las opciones para el aprendizaje del lenguaje de señas

    Scenario: Visualizo las opciones para aprender el lenguaje de señas
    Given que me encuentro en el inicio de la aplicación.
    When haya iniciado sesión con una cuenta aprendiz 
    Then se mostrará todo el menú de opciones para acceder a las secciones: “Rendir evaluaciones, material de aprendizaje y visualización de rendimiento” 

    Example: Seleccion de opciones 
        | Secciones |
        | "Rendir evaluaciones"  | Material de aprendizaje | Visualización de rendimiento |

    