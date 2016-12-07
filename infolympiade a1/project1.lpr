PROGRAM project1;
VAR Nstring : STRING;
    N : INTEGER;
    goedewaarde : BOOLEAN;

PROCEDURE invoer;
BEGIN
  WRITELN('Voer een waarde voor N in:');
  READLN(Nstring);
    VAL(Nstring,N); //Om te voorkomen dat het programma crasht bij een verkeerde waarde
END;


PROCEDURE analyse;
BEGIN
  IF N < 1 THEN
    BEGIN
    WRITELN('N moet een waarde hebben tussen de 0 en 41.');
    goedewaarde := FALSE;
    END
  ELSE IF N > 40 THEN
    BEGIN
    WRITELN('N moet een waarde hebben tussen de 0 en 41.');
    goedewaarde := FALSE;
    END
  ELSE
    goedewaarde :=TRUE;
END;

PROCEDURE vierkanttekenen;
VAR i,k : INTEGER;
BEGIN
  IF N=1 THEN WRITELN('*')
  ELSE
    BEGIN
    FOR i := 1 TO N DO WRITE('*');
    FOR i := 1 TO N-2 DO
      BEGIN
        WRITELN;
        WRITE('*');
        FOR k :=3 TO N DO WRITE('-');
        WRITE('*');
      END ;
    WRITELN();
    FOR i := 1 TO N DO WRITE('*');
    END;
  READLN();
END;

BEGIN
  REPEAT
    invoer;
    analyse;
  UNTIL goedewaarde = TRUE;
  vierkanttekenen
END.
