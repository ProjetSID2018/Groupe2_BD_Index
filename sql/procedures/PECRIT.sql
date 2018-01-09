DROP PROCEDURE IF EXISTS PECRIT;
DELIMITER |
CREATE PROCEDURE PECRIT (IN VDATE_PUBLICATION DATE, IN VID_JOURNAL INT, IN VID_CLASSE INT, VID_POSITIVE INT,IN VNOM_AUTEUR VARCHAR(50),IN VPRENOM_AUTEUR VARCHAR(50) )   
BEGIN
     PARTICLE ( VDATE_PUBLICATION , VID_JOURNAL , VID_CLASSE , VID_POSITIVE , @VID_ARTICLE )   ;
     PAUTEUR (VNOM_AUTEUR ,VPRENOM_AUTEUR, @VID_AUTEUR ) ;
     INSERT INTO ECRIT VALUES (@VID_AUTEUR ,@VID_ARTICLE);
END|         

DELIMITER ;
