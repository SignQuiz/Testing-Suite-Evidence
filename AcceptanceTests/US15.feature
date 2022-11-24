Feature: Visualizar cobro de comision 

    Como especialista en el lenguaje de señas quiero cobrar por el material implementado para generar ganancias

   Scenario: Deseo cobrar por mis evaluaciones y material de aprendizaje 

   Given que quiero cobrar una comisión por realizar evaluaciones y materiales de aprendizaje 
   When me dirija a la sección de cobro de comisión.  
   Then podré ingresar los datos de mi tarjeta y se cobrará de acuerdo con lo monetizado

   Example: Cobro de comision para cobrar lo monetizacion
   |Menu Principal Especialista|
   |Inicio|Ruta de aprendizaje|Evaluaciones|Material de aprendizaje|Estadisticas|"Monetizacion"|Configuracion|
   |Monetizacion|"Cobro de comision"|
   |Ingrese su tarjeta de debito para deposito|
   |"68468321341"|
   |Mensaje de confirmacion de tarjeta|
   |"Se guardo tarjeta de debito para deposito de monetizacion"|
   |Ha generado S/.100|
   |Se deposito exitosamente|

   Scenario: Cuando no subí ninguna evaluación y material de aprendizaje  

   Given que no subí ninguna evaluación y material de aprendizaje y
   When dirija a la sección de cobro de comisión  
   Then no visualizo que no está disponible el cobro de comision

   Example: Cobro de comision para cobrar lo monetizacion cuando no se subio nada
   |Menu Principal Especialista|
   |Inicio|Ruta de aprendizaje|Evaluaciones|Material de aprendizaje|Estadisticas|Monetizacion|Configuracion|
   |Monetizacion|"Cobro de comision"|
   |Mensaje de que no se subio ninguna evaluacion y/o material de aprendizaje|
   |"No se subio ninguna evaluacion y/o material de aprendizaje no se puede vizualizar su cobro de comision"|
   