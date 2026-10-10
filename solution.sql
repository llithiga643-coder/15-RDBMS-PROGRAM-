DELIMITER //

DROP PROCEDURE IF EXISTS CheckStudentResult//

CREATE PROCEDURE CheckStudentResult()
BEGIN
    DECLARE student_name VARCHAR(50) DEFAULT 'Anu';
    DECLARE marks INT DEFAULT 45;

    IF marks >= 40 THEN
        SELECT student_name AS Student, marks AS Marks, 'Passed' AS Result;
    ELSE
        SELECT student_name AS Student, marks AS Marks, 'Failed' AS Result;
    END IF;
END//

DELIMITER ;

CALL CheckStudentResult();

