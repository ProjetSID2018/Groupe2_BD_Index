DROP PROCEDURE IF EXISTS PAUTEUR;
DELIMITER |
CREATE PROCEDURE PAUTEUR (IN VNOM_AUTEUR VARCHAR(50),IN VPRENOM_AUTEUR VARCHAR(50),OUT VID_AUTEUR INT)   
BEGIN
     INSERT INTO AUTEUR VALUES (NULL,VNOM_AUTEUR,VPRENOM_AUTEUR);
     SELECT LAST_INSERT_ID() INTO VID_AUTEUR ;
END|         

DELIMITER ;
