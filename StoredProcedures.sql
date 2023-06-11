Delimiter $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `lanzamiento_juego`()
BEGIN
Select nombre, fecha 
from lifegame.juego;
END

$$
delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarUsuario`(
    IN p_nombre VARCHAR(50),
    IN p_documento VARCHAR(15),
    IN p_birthdate DATE,
    IN p_id_pais INT,
    IN p_direccion VARCHAR(50),
    IN p_mail VARCHAR(50),
    IN p_telefono INT
)
BEGIN
    INSERT INTO usuario(nombre, documento, birthdate, id_pais, direccion, mail, telefono)
    VALUES (p_nombre, p_documento, p_birthdate, p_id_pais, p_direccion, p_mail, p_telefono);
END
$$

 CALL lanzamiento_juego(); 
 CALL InsertarUsuario('Pablo', '123456789', '1990-01-01', 1, 'Calle Principal', 'pabloclavounclavito@example.com', 123456789);
 
 
