﻿  DELIMITER |
  CREATE TRIGGER TPOSITION_WORD BEFORE INSERT
  ON position_word FOR EACH ROW
  BEGIN
    DECLARE counter1 INT;
    DECLARE counter2 INT;
    DECLARE counter3 INT;
    DECLARE counter4 INT;
    DECLARE counter5 INT;
  
    DECLARE CLE_ETRANGERE1 CONDITION FOR SQLSTATE '99990';
    DECLARE CLE_ETRANGERE2 CONDITION FOR SQLSTATE '99992';
    DECLARE CLE_ETRANGERE3 CONDITION FOR SQLSTATE '99993';
    DECLARE CLE_ETRANGERE4 CONDITION FOR SQLSTATE '99994';
    DECLARE CLE_ETRANGERE5 CONDITION FOR SQLSTATE '99995';
  
    SELECT COUNT(W.id_word) INTO counter1
    FROM  word W
    WHERE NEW.id_word IN (SELECT id_word FROM word);
    IF (counter1 = 0) THEN
	    SIGNAL CLE_ETRANGERE1 SET MESSAGE_TEXT = "WORD's Foreign key does not exist";
    END IF;

    SELECT COUNT(E.id_entity) INTO counter2
    FROM  entity E
    WHERE NEW.id_entity IN (SELECT id_entity FROM entity);
    IF (counter2 = 0) THEN
	    SIGNAL CLE_ETRANGERE2 SET MESSAGE_TEXT = "ENTITY's Foreign key does not exist";
    END IF;

    SELECT COUNT(PT.id_pos_tag) INTO counter3
    FROM pos_tagging PT
    WHERE NEW.id_pos_tag IN (SELECT id_pos_tag FROM pos_tagging);
    IF (counter3 = 0) THEN
	    SIGNAL CLE_ETRANGERE3 SET MESSAGE_TEXT = "POS_TAGGING's Foreign key does not exist";
    END IF;

    SELECT COUNT(A.id_article) INTO counter4
    FROM  article A
    WHERE NEW.id_article IN (SELECT id_article FROM article);
    IF (counter4 = 0) THEN
	    SIGNAL CLE_ETRANGERE4 SET MESSAGE_TEXT = "ARTICLE's Foreign key does not exist";
    END IF;

    SELECT COUNT(W.id_wiki) INTO counter5
    FROM wiki W
    WHERE NEW.id_wiki IN (SELECT id_wiki FROM wiki);
    IF (counter5 = 0) THEN
	    SIGNAL CLE_ETRANGERE5 SET MESSAGE_TEXT = "WIKI's Foreign key does not exist";
    END IF;
  END |
  DELIMITER ;






