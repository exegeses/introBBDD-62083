# Insertar datos en una tabla

> Para inserttar datos en una tabla 
> utilizamos el comando "INSERT"  

> Sintáxis versión A (mencionando los campos) 

    INSERT INTO nombreTabla  
        ( nCampo2, nCampo3, nCampo5 )  
      VALUES  
        ( valor2, valor3, valor5 );  

> Ejemplo  
    
    INSERT INTO billeteras  
        ( nombre, precio, stock )  
      VALUES  
        ( 'Ledger Nano S', 16000, 30 );  

---

> Sintáxis versión B (sin mencionar los campos)  

    INSERT INTO nombreTabla  
      VALUES  
        ( valor1, valor2, valor3, valor4, valor5 );  


> ***Nota:*** con esta sin´´axis hay que mencionar TODOS y cada uno de los valores que van a cada uno de los campos, respetando su orden.  

> Ejemplo: 

    INSERT INTO billeteras  
      VALUES  
        ( DEFAULT, 'Trezor One', 19500, 30 );  

--- 

> También se pueden insertar varios registros 
> en un sólo comando. 

    INSERT INTO billeteras  
      VALUES  
        ( DEFAULT, 'Trezor T', 78000, 20 ),  
        ( DEFAULT, 'Ledger nano X', 56000, 20);  
