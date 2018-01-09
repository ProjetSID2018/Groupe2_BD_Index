
DROP PROCEDURE IF EXISTS PWORD;
DELIMITER |
CREATE PROCEDURE PWORD (IN VWORD VARCHAR(50), IN VLEMMA VARCHAR(50), OUT VID_WORD INT)   



BEGIN
DECLARE VID_LEMMA INT DEFAULT 0;


    INSERT INTO LEMMA VALUES (NULL,VLEMMA);  

    SELECT LAST_INSERT_ID() INTO VID_LEMMA;

    INSERT INTO WORD VALUES (NULL,VWORD, VID_LEMMA);

    SELECT LAST_INSERT_ID() INTO VID_WORD;

END|         

DELIMITER ;
CALL PWORD("VBA", "PYTHON", @ID_WORD);
CALL PWORD("PHP", "JAVA", @ID_WORD);
SELECT @ID_WORD;
