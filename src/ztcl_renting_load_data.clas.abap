CLASS ztcl_renting_load_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS ztcl_renting_load_data IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lt_brands    TYPE TABLE OF ztrent_brands,
          lt_cars      TYPE TABLE OF ztrent_cars,
          lt_customers TYPE TABLE OF ztrent_customers.

** BRANDS ***

    lt_brands = VALUE #(
        ( marca = 'ASTON MARTIN' )
        ( marca = 'AUDI' )
        ( marca = 'BENTLEY' )
        ( marca = 'BUGATTI' )
        ( marca = 'FERRARI' )
        ( marca = 'FORD' )
        ( marca = 'HONDA' )
        ( marca = 'JEEP' )
        ( marca = 'KIA' )
        ( marca = 'MERCEDES' )
        ( marca = 'MINI' )
        ( marca = 'SEAT' )
        ( marca = 'VW' ) ).

    DELETE FROM ztrent_brands.
    INSERT ztrent_brands FROM TABLE @lt_brands.

    SELECT * FROM ztrent_brands INTO TABLE @lt_brands.
    out->write( sy-dbcnt ).
    out->write( 'ztrent_brands data inserted successfully!').

** CARS**
    lt_cars = VALUE #(
        ( matricula = '1234LYL' marca = 'BMW' modelo = 'SERIE 3' color = 'AZUL' motor = '2.0' potencia = '180' und_potencia = 'CV'
          combustible = 'GASOLINA' consumo = '4.20' fecha_fabr = '20200503' puertas = '3' precio = '84' moneda = 'USD' alquilado = '' alq_desde = '' alq_hasta = '' )
        ( matricula = '1246GSA' marca = 'BMW' modelo = 'SERIE 4' color = 'BLANCO' motor = '2.5' potencia = '210' und_potencia = 'CV'
         combustible = 'GASOLINA' consumo = '7.00' fecha_fabr = '20200418' puertas = '5' precio = '210' moneda = 'USD' alquilado = 'X' alq_desde = '20211201' alq_hasta = '20211231' )
        ( matricula = '2109OJI' marca = 'MINI' modelo = 'COUPE' color = 'GRIS' motor = '4.0' potencia = '240' und_potencia = 'CV'
          combustible = 'GASOLINA' consumo = '8.00' fecha_fabr = '20200418' puertas = '5' precio = '260' moneda = 'USD' alquilado = 'X' alq_desde = '20210805' alq_hasta = '20210818' )
        ( matricula = '2149FSA' marca = 'HONDA' modelo = 'ACCORD' color = 'AMARILLO' motor = '2.0' potencia = '160' und_potencia = 'CV'
          combustible = 'HYBRID  ' consumo = '2.40' fecha_fabr = '20210415' puertas = '3' precio = '110' moneda = 'USD' alquilado = '' alq_desde = '' alq_hasta = '' )
        ( matricula = '2174FHF' marca = 'KIA' modelo = 'CEE''D' color = 'AZUL' motor = '4.2' potencia = '340' und_potencia = 'CV'
          combustible = 'GASOLINA' consumo = '10.00' fecha_fabr = '20200617' puertas = '5' precio = '160' moneda = 'USD' alquilado = 'X' alq_desde = '20220801' alq_hasta = '20220831' )
        ( matricula = '2188SJS' marca = 'MINI' modelo = 'HATCH' color = 'AZUL' motor = '1.8' potencia = '220' und_potencia = 'CV'
          combustible = 'GASOLINA' consumo = '6.50' fecha_fabr = '20200208' puertas = '3' precio = '110' moneda = 'USD' alquilado = '' alq_desde = '' alq_hasta = '' )
        ( matricula = '2329HFS' marca = 'JEEP' modelo = 'WRANGLER' color = 'VERDE' motor = '2.0' potencia = '180' und_potencia = 'CV'
          combustible = 'DIESEL' consumo = '8.50' fecha_fabr = '20200516' puertas = '5' precio = '160' moneda = 'USD' alquilado = '' alq_desde = '' alq_hasta = '' )
        ( matricula = '2356FSF' marca = 'AUDI' modelo = 'A8' color = 'BLANCO' motor = '3.9' potencia = '140' und_potencia = 'CV'
          combustible = 'ELECTRIC' consumo = '00.00' fecha_fabr = '20200304' puertas = '3' precio = '140' moneda = 'USD' alquilado = 'X' alq_desde = '20210701' alq_hasta = '20210708' )
        ( matricula = '2392JFH' marca = 'JEEP' modelo = 'GRAND CHEROKEE' color = 'BLANCO' motor = '3.6' potencia = '176' und_potencia = 'CV'
          combustible = 'GASOLINA' consumo = '12.00' fecha_fabr = '20200924' puertas = '5' precio = '160' moneda = 'USD' alquilado = 'X' alq_desde = '20210301' alq_hasta = '20220301' )
        ( matricula = '2425SFA' marca = 'FORD' modelo = 'B-MAX' color = 'ROJO' motor = '2.0' potencia = '140' und_potencia = 'CV'
          combustible = 'GASOLINA' consumo = '5.50' fecha_fabr = '20210603' puertas = '5' precio = '95' moneda = 'USD' alquilado = '' alq_desde = '' alq_hasta = '' )
        ( matricula = '2837KFF' marca = 'MERCEDES' modelo = 'CLASE B' color = 'NEGRO' motor = '2.0' potencia = '200' und_potencia = 'CV'
          combustible = 'GASOLINA' consumo = '7.00' fecha_fabr = '20200726' puertas = '5' precio = '160' moneda = 'USD' alquilado = 'X' alq_desde = '20200301' alq_hasta = '20210301' )
        ( matricula = '2837SUF' marca = 'MERCEDES' modelo = 'CLASE C' color = 'AMARILLO' motor = '3.0' potencia = '220' und_potencia = 'CV'
          combustible = 'GASOLINA' consumo = '6.00' fecha_fabr = '20200614' puertas = '5' precio = '180' moneda = 'USD' alquilado = 'X' alq_desde = '20211201' alq_hasta = '20211206' )
        ( matricula = '2827SAF' marca = 'MERCEDES' modelo = 'CLASE C' color = 'AMARILLO' motor = '3.0' potencia = '200' und_potencia = 'CV'
          combustible = 'HYBRID' consumo = '0.00' fecha_fabr = '20210603' puertas = '5' precio = '180' moneda = 'USD' alquilado = '' alq_desde = '' alq_hasta = '' )
        ( matricula = '2847JGH' marca = 'HONDA' modelo = 'CARENS' color = 'NEGRO' motor = '1.9' potencia = '180' und_potencia = 'CV'
          combustible = 'DIESEL' consumo = '5.00' fecha_fabr = '20210716' puertas = '5' precio = '180' moneda = 'USD' alquilado = 'X' alq_desde = '20211106' alq_hasta = '20211206' )
        ( matricula = '29348KJ' marca = 'MINI' modelo = 'CABRIO' color = 'AMARILLO' motor = '2.0' potencia = '240' und_potencia = 'CV'
          combustible = 'ELECTRIC' consumo = '0.00' fecha_fabr = '20200812' puertas = '3' precio = '150' moneda = 'USD' alquilado = 'X' alq_desde = '20211106' alq_hasta = '20211206' )
        ( matricula = '5235HER' marca = 'ASTON MARTIN' modelo = 'RAPIDE' color = 'VERDE' motor = '4.5' potencia = '240' und_potencia = 'CV'
          combustible = 'GASOLINA' consumo = '9.00' fecha_fabr = '20200804' puertas = '5' precio = '180' moneda = 'USD' alquilado = '' alq_desde = '' alq_hasta = '' )
 ).


    DELETE FROM ztrent_cars.
    INSERT ztrent_cars FROM TABLE @lt_cars.

    SELECT * FROM ztrent_cars INTO TABLE @lt_cars.
    out->write( sy-dbcnt ).
    out->write( 'ztrent_cars data inserted successfully!').

** CUSTOMERS**
*    GET TIME STAMP FIELD DATA(lv_tmp).

    lt_customers = VALUE #(
        ( doc_id = '005638984K' matricula = '1234LYL' nombres = 'Olivia' apellidos = 'Allan' email = 'owen.allan@email.com' cntr_type = 'A1' )
        ( doc_id = '005638984K' matricula = '1246GSA' nombres = 'Olivia' apellidos = 'Allan' email = 'owen.allan@email.com' cntr_type = 'A3' )
        ( doc_id = '340958439D' matricula = '29348KJ' nombres = 'Michael' apellidos = 'Short' email = 'jason.short@email.com' cntr_type = 'A1' )
        ( doc_id = '340958439D' matricula = '2847JGH' nombres = 'Michael' apellidos = 'Short' email = 'jason.short@email.com' cntr_type = 'A2' )
        ( doc_id = '340958439D' matricula = '2827SAF' nombres = 'Michael' apellidos = 'Short' email = 'jason.short@email.com' cntr_type = 'A3' )
        ( doc_id = '340958439D' matricula = '2837KFF' nombres = 'Michael' apellidos = 'Short' email = 'jason.short@email.com' cntr_type = 'A4' )
        ( doc_id = '345093450E' matricula = '2425SFA' nombres = 'Sue' apellidos = 'Sanderson' email = 'joan.sanderson@email.com' cntr_type = 'A1' )
        ( doc_id = '345093450E' matricula = '2392JFH' nombres = 'Sue' apellidos = 'Sanderson' email = 'joan.sanderson@email.com' cntr_type = 'A3' )
        ( doc_id = '345838534R' matricula = '2356FSF' nombres = 'Lily' apellidos = 'Langdon' email = 'andrew.langdon@email.com' cntr_type = 'A2' )
        ( doc_id = '345838534R' matricula = '2329HFS' nombres = 'Lily' apellidos = 'Langdon' email = 'andrew.langdon@email.com' cntr_type = 'A1' )
        ( doc_id = '345838534R' matricula = '2174FHF' nombres = 'Lily' apellidos = 'Langdon' email = 'andrew.langdon@email.com' cntr_type = 'A0' )
        ( doc_id = '348947597P' matricula = '2188SJS' nombres = 'Lillian' apellidos = 'Davies' email = 'julian.davies@email.com' cntr_type = 'A1' )
        ( doc_id = '348947597P' matricula = '1246GSA' nombres = 'Lillian' apellidos = 'Davies' email = 'julian.davies@email.com' cntr_type = 'A2' )
        ( doc_id = '430958433A' matricula = '2174FHF' nombres = 'Wendy' apellidos = 'Short' email = 'wendy.short@email.com' cntr_type = 'A4' )
        ( doc_id = '453532543O' matricula = '2109OJI' nombres = 'Vanessa' apellidos = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'A1' )
        ( doc_id = '453532543O' matricula = '2329HFS' nombres = 'Vanessa' apellidos = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'A4' )
        ( doc_id = '453532543O' matricula = '1234LYL' nombres = 'Vanessa' apellidos = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'A1' )
        ( doc_id = '489632882D' matricula = '2329HFS' nombres = 'Neil' apellidos = 'Welch' email = 'neil.welch@email.com' cntr_type = 'A2' )
        ( doc_id = '489632882D' matricula = '2174FHF' nombres = 'Neil' apellidos = 'Welch' email = 'neil.welch@email.com' cntr_type = 'A1' )
        ( doc_id = '852367586F' matricula = '2392JFH' nombres = 'Eric' apellidos = 'Berry' email = 'eric.berry@email.com' cntr_type = 'A2' )
        ( doc_id = '852367586F' matricula = '2425SFA' nombres = 'Eric' apellidos = 'Berry' email = 'eric.berry@email.com' cntr_type = 'A4' )
        ( doc_id = '859675388G' matricula = '2837KFF' nombres = 'Sonia' apellidos = 'Wright' email = 'sonia.wright@email.com' cntr_type = 'A1' )
        ( doc_id = '859675388G' matricula = '2827SAF' nombres = 'Sonia' apellidos = 'Wright' email = 'sonia.wright@email.com' cntr_type = 'A2' )
        ( doc_id = '982356739N' matricula = '29348KJ' nombres = 'Olivia' apellidos = 'Allan' email = 'sally.slater@email.com' cntr_type = 'A1' )
        ( doc_id = '982356739N' matricula = '1246GSA' nombres = 'Olivia' apellidos = 'Allan' email = 'sally.slater@email.com' cntr_type = 'A2' )
        ( doc_id = '982356739N' matricula = '1234LYL' nombres = 'Matt' apellidos = 'Slater' email = 'sally.slater@email.com' cntr_type = 'A3' )
).

    DELETE FROM ztrent_customers.
    INSERT ztrent_customers FROM TABLE @lt_customers.

    SELECT * FROM ztrent_customers INTO TABLE @lt_customers.
    out->write( sy-dbcnt ).
    out->write( 'ztrent_customers data inserted successfully!').

  ENDMETHOD.

ENDCLASS.