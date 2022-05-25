/*Comandos UPDATE para la practica */
/*describe tabla --> te muestra los campos de la tabla asi como el tipo de dato de cada campo, si son nulos o no
y tambien las llaves primarias y foraneas*/

/*Agregar a la tabla proveedor el campo credito de tipo double*/
ALTER TABLE proveedor ADD credito double not null;

/*Actualizar el credito a 20,000 a todos los proveedores en la tabla proveedores*/
UPDATE proveedor SET credito = 20000;

/*Transferir todos los socios del sams club "Tepeyac" al sams "El molinito"*/
UPDATE socioclub SET idClub=99 WHERE idClub=25;

/*Disminuir el credito del proveedor "Sabritas" en un 9%*/
UPDATE proveedor SET credito=(credito*.91) WHERE nombre="Sabritas";

/*Reasignar todos los productos provistos por los proveedores con clave 5,8,3 a el
proveedor con clave 10*/
UPDATE producto SET idProveedor=10 WHERE idProveedor=5;
UPDATE producto SET idProveedor=10 WHERE idProveedor=8;
UPDATE producto SET idProveedor=10 WHERE idProveedor=3;

/*Asignar un credito de 10000 a todos los proveedores cuyo nombre empiece con la letra
S*/
UPDATE proveedor SET credito=10000 WHERE nombre LIKE "S%";

/*Cambiar el precio unitario del producto con clave 15 a 200*/
UPDATE producto SET precioUnitario=200 WHERE idProducto=15;

/*Aumentar en un 10% el precio unitario de todos los productos de la tabla productos*/
UPDATE producto SET precioUnitario=(precioUnitario+(precioUnitario*.10));

/*Cambiar el nombre de los clubs para que quede todo en letras mayusculas*/
UPDATE club SET nombre=UPPER(nombre);
