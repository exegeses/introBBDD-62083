# Modificaciones de registros (datos dentro de una tabla) 

> Para modificar registros utilizamos la palabra reservada
> ***UPDATE** 

> Sintáxis 

    UPDATE nombreTabla  
      SET campo = valor;

> Ejemplo 

    UPDATE destinos  
      SET destPrecio = 8470  
     WHERE idDestino = 6;  


> Sintáxis 

    UPDATE nombreTabla
        SET campo2 = valor2,
            campo3 = valor3,
            campo5 = vamor5
    WHERE id = valorID;