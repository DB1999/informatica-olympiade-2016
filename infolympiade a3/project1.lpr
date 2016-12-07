program collatz;
VAR N, A : INTEGER;

PROCEDURE input;
BEGIN
  READLN(N);
  A := N;
END;

PROCEDURE calc;
BEGIN
 IF Odd(N) THEN
  BEGIN
    N := 3*N +1 ;
    IF N > A THEN
     A := N ;
  END;
 IF Not Odd(N) THEN
  BEGIN
    N := N DIV 2 ;
    IF N > A THEN
     A := N  ;
  END;
END;

BEGIN
  input;
  REPEAT
    calc
  UNTIL N = 1;
  WRITELN(A);
  READLN();
end.

