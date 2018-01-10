DELIMITER /
DROP PROCEDURE IF EXISTS PAUTHOR/

CREATE PROCEDURE PAUTHOR (IN VSURNAME_AUTHOR VARCHAR(50), IN VFIRSTNAME_AUTHOR VARCHAR(50), OUT VID_AUTHOR INT)   
BEGIN
     INSERT INTO AUTHOR (ID_AUTHOR, SURNAME_AUTHOR, FIRSTNAME_AUTHOR) VALUES (NULL, VSURNAME_AUTHOR,VFIRSTNAME_AUTHOR);
     SELECT LAST_INSERT_ID() INTO VID_AUTHOR;
END/

CALL PAUTHOR("jean","mich",@VID_AUTHOR)/
CALL PAUTHOR("be","fi",@VID_AUTHOR)/
SELECT @VID_AUTHOR;