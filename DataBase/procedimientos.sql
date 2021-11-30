
/*
*Prcedimientos Cliente
*/


DELIMITER $$
CREATE OR REPLACE PROCEDURE CREAR_CLIENTE(
    IN ID_CLIENTE_C INT,
    IN NOMBRE_C VARCHAR(30),
    IN DIRECCION_C VARCHAR(30),
    IN TELEFONO_C INT
)
BEGIN 
    INSERT INTO CLIENTE (ID_CLIENTE ,NOMBRE , DIRECCION, TELEFONO)
    VALUES (ID_CLIENTE_C, NOMBRE_C, DIRECCION_C, TELEFONO_C);
   	COMMIT;
END
$$

DELIMITER ;

DELIMITER $$
CREATE OR REPLACE PROCEDURE UPDATE_CLIENTE(
	IN CLIENTEID_C INT,
    IN NOMBRE_C VARCHAR(30),
    IN DIRECCION_C VARCHAR(30),
    IN TELEFONO_C INT
)

BEGIN 
	UPDATE CLIENTE
    SET NOMBRE = NOMBRE_C , DIRECCION = DIRECCION_C , 
    TELEFONO = TELEFONO_C WHERE CLIENTE.ID_CLIENTE = CLIENTEID_C ;
   	COMMIT;
END
$$
DELIMITER;


/*
*Procedimientos Categoria
*/

DELIMITER $$
CREATE OR REPLACE PROCEDURE CREAR_CATEGORIA(
	IN ID_CATEGORIA_C INT,
	IN NOMBRE_C VARCHAR(30),
	IN DESCIPCION_C VARCHAR(100)
)

BEGIN 
	INSERT INTO CATEGORIA (ID_CATEGORIA, NOMBRE, DESCRIPCION)
	VALUES (ID_CATEGORIA_C, NOMBRE_C, DESCIPCION_C);
	COMMIT;
END
$$
DELIMITER ;

DELIMITER $$
CREATE OR REPLACE PROCEDURE UPDATE_CATEGORIA(
	IN ID_CATEGORIA_C INT,
	IN NOMBRE_C VARCHAR(30),
	IN DESCRIPCION_C VARCHAR(100)
)
BEGIN 
	UPDATE CATEGORIA 
	SET ID_CATEGORIA = ID_CATEGORIA_C, NOMBRE = NOMBRE_C, DESCRIPCION = DESCRIPCION_C
	WHERE ID_CATEGORIA = ID_CATEGORIA_C;
	COMMIT;
END
$$
DELIMITER ;

DELIMITER $$

CREATE OR REPLACE PROCEDURE DELETE_CATEGORIA(
	IN ID_CATEGORIA_C INT
)
BEGIN 
	DELETE FROM CATEGORIA WHERE ID_CATEGORIA = ID_CATEGORIA_C;
	COMMIT;
END
$$
DELIMITER ;


/*
*Procedimientos Productos
*/

DELIMITER $$
CREATE OR REPLACE PROCEDURE CREAR_PRODUCTO(
	IN ID_PRODUCTO_C INT,
	IN ID_CATEGORIA_C INT,
	IN NOMBRE_C VARCHAR(30),
	IN PRECIO_C INT,
	IN T_PREPARACION_C INT
)

BEGIN 
	INSERT INTO PRODUCTO (ID_PRODUCTO, ID_CATEGORIA, NOMBRE, PRECIO, T_PREPARACION_MIN)
	 VALUES (ID_PRODUCTO_C, ID_CATEGORIA_C, NOMBRE_C, PRECIO_C, T_PREPARACION_C);
	COMMIT;
END
$$
DELIMITER ;


DELIMITER $$
CREATE OR REPLACE PROCEDURE UPDATE_PRODUCTO(
	IN ID_PRODUCTO_C INT,
	IN ID_CATEGORIA_C INT,
	IN NOMBRE_C VARCHAR(30),
	IN PRECIO_C INT,
	IN T_PREPARACION_C INT

)

BEGIN 
	UPDATE PRODUCTO 
	SET ID_PRODUCTO = ID_PRODUCTO_C, ID_CATEGORIA = ID_CATEGORIA_C, NOMBRE = NOMBRE_C,
	PRECIO = PRECIO_C, T_PREPARACION_MIN = T_PREPARACION_C WHERE ID_PRODUCTO = ID_PRODUCTO_C;
	COMMIT;
END
$$
DELIMITER ;

DELIMITER $$
CREATE OR REPLACE PROCEDURE DELETE_PRODUCTO(
	ID_PRODUCTO_C INT
)
BEGIN 
	DELETE FROM PRODUCTO WHERE PRODUCTO.ID_PRODUCTO = ID_PRODUCTO_C;
	COMMIT;
END
$$
DELIMITER ;

/*
*Procedimientos Repartidor
*/
DELIMITER $$

CREATE OR REPLACE PROCEDURE CREAR_REPARTIDOR (
	IN ID_REPARTIDOR_C INT,
	IN NOMBRE_C VARCHAR(30),
	IN VEHICULO_C VARCHAR(30),
	IN TELEFONO_C INT
)

BEGIN 
	INSERT INTO REPARTIDOR (ID_REPARTIDOR, NOMBRE, VEHICULO, TELEFONO)
	VALUES (ID_REPARTIDOR_C, NOMBRE_C, VEHICULO_C, TELEFONO_C);
	COMMIT;
END
$$
DELIMITER ;

DELIMITER $$
CREATE OR REPLACE PROCEDURE UPDATE_REPARTIDOR(
	IN ID_REPARTIDOR_C INT,
	IN NOMBRE_C VARCHAR(30),
	IN VEHICULO_C VARCHAR(30),
	IN TELEFONO_C INT
)

BEGIN 
	UPDATE REPARTIDOR
	SET NOMBRE = NOMBRE_C, VEHICULO = VEHICULO_C, TELEFONO = TELEFONO_C
	WHERE ID_REPARTIDOR = ID_REPARTIDOR_C;
	COMMIT ;
END
$$
DELIMITER ;

DELIMITER $$

CREATE OR REPLACE PROCEDURE DELETE_REPARTIDOR(
	ID_REPARTIDOR_C INT

)
BEGIN 
	DELETE FROM REPARTIDOR
	WHERE REPARTIDOR.ID_REPARTIDOR = ID_REPARTIDOR_C;
	COMMIT;
END
$$
DELIMITER ;

/*
* Procedimientos Carrito
*/
DELIMITER $$

CREATE OR REPLACE PROCEDURE CREAR_CARRITO(
	IN ID_CARRITO_C INT,
	IN ID_CLIENTE_C INT,
	IN TIEMPO_ESTIMADO_C INT,
	IN TOTAL_C INT
)

BEGIN 
	INSERT INTO CARRITO (ID_CARRITO, ID_CLIENTE, TIEMPO_ESTIMADO, TOTAL)
	VALUES (ID_CARRITO_C, ID_CLIENTE_C, TIEMPO_ESTIMADO_C, TOTAL_C);
	COMMIT;
END
$$
DELIMITER ;

DELIMITER $$

CREATE OR REPLACE PROCEDURE DELETE_CARRITO(
	IN ID_CARRITO_C INT
)
BEGIN 
	DELETE FROM CARRITO
	WHERE CARRITO.ID_CARRITO = ID_CARRITO_C;
	COMMIT;
END
$$
DELIMITER ;

/*
*PROCEDIMIENTO DETALLE
*/

DELIMITER 
$$
CREATE OR REPLACE PROCEDURE CREAR_DETALLE(
	IN ID_CARRITO_C INT,
	IN ID_PRODUCTO_C INT,
	IN CANTIDAD_C INT
	
) 

BEGIN 
	INSERT INTO DETALLE (ID_CARRITO, ID_PRODUCTO, CANTIDAD)
	VALUES (ID_CARRITO_C, ID_PRODUCTO_C, CANTIDAD_C);
	COMMIT;
END
$$
DELIMITER;

DELIMITER $$
CREATE OR REPLACE PROCEDURE DELETE_DETALLE(
	ID_CARRITO_C INT, 
	ID_PRODUCTO_C INT
)
BEGIN 
	DELETE FROM DETALLE 
	WHERE DETALLE.ID_CARRITO = ID_CARRITO_C AND DETALLE.ID_PRODUCTO = ID_PRODUCTO_C;
	COMMIT;
END
$$
DELIMITER ;





