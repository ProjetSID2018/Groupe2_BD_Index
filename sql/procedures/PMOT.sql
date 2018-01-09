
DROP PROCEDURE IF EXISTS PMOT;
DELIMITER |
CREATE PROCEDURE PMOT (IN VMOT VARCHAR(50), IN VRACINE VARCHAR(50), OUT VID_MOT INT)   



BEGIN
DECLARE VID_RACINE INT DEFAULT 0;


    INSERT INTO MOT_RACINE VALUES (NULL,VRACINE);  

    SELECT LAST_INSERT_ID() INTO VID_RACINE;

    INSERT INTO MOT VALUES (NULL,VMOT, VID_RACINE);

    SELECT LAST_INSERT_ID() INTO VID_MOT;

END|         

DELIMITER ;
CALL PMOT("VBA", "PYTHON", @ID_MOT);
CALL PMOT("PHP", "JAVA", @ID_MOT);
SELECT @ID_MOT;
