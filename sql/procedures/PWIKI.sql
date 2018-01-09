DELIMITER /
DROP PROCEDURE IF EXISTS PWIKI/

CREATE PROCEDURE PWIKI (IN VFILE_WIKI VARCHAR(50), OUT VID_WIKI INT)   
BEGIN
     INSERT INTO WIKI (ID_WIKI, FILE_WIKI) VALUES (NULL, FILE_WIKI);
     SELECT LAST_INSERT_ID() INTO VID_WIKI;
END/

CALL PWIKI("wikipedia.org", @VID_WIKI)/
SELECT @VID_WIKI