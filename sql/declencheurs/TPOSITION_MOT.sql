﻿DELIMITER /
CREATE TRIGGER Tposition_mot BEFORE INSERT
ON position_mot FOR EACH ROW
nb1 = 0
BEGIN
    IF id_position IS  NULL   
    	THEN
        SELECT "La clé ne doit pas etre nulle";
    END IF;
    
    SELECT COUNT(*) INTO nb1
    FROM position_mot P, mot_racine R
    WHERE P.id_racine = R.id_racine ;
    IF nb1 == 0
    	THEN
        SELECT "La clé étrangère liée à la racine n'existe pas";
    END IF;
    
    SELECT COUNT(*) INTO nb1
    FROM position_mot P, entite E
    WHERE P.id_entite = E.id_entite ;
    IF nb2 == 0
    	THEN
        SELECT "La clé étrangère liée à l'entité n'existe pas";
    END IF;
    
    SELECT COUNT(*) INTO nb1
    FROM position_mot P, pos_tagging PT
    WHERE P.pos_tag = PT.pos_tag ;
    IF nb3 == 0
    	THEN
        SELECT "La clé étrangère liée à la position n'existe pas" ;
    END IF;
    
    SELECT COUNT(*) INTO nb1
    FROM position_mot P, article A
    WHERE P.id_article = A.id_article ;
    IF nb4 == 0
    	THEN
        SELECT "La clé étrangère liée à l'article n'existe pas";
    END IF;
    
    SELECT COUNT(*) INTO nb1
    FROM position_mot P, synonyme S
    WHERE P.id_synonyme = S.id_synonyme;
    IF nb5 == 0
    	THEN
        SELECT "La clé étrangère liée au synonyme n'existe pas";
    END IF;
    
    SELECT COUNT(*) INTO nb1
    FROM position_mot P, wiki W
    WHERE P.id_wiki = W.id_wiki;
    IF nb6 == 0
    	THEN
        SELECT "La clé étrangère liée au wiki n'existe pas";
    END IF;
    
END/
DELIMITER/