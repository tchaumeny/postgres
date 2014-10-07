CREATE EXTENSION pattern_escape;

SELECT pattern_escape('f%o');
SELECT pattern_escape('f_o');
SELECT pattern_escape('f\\o');

SELECT pattern_escape('%foo');
SELECT pattern_escape('f_o');
SELECT pattern_escape('f\\o');
