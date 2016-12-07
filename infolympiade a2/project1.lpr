program Klinkerweg;
USES Crt;
VAR input : STRING;
    i : INTEGER;

PROCEDURE inp;
BEGIN
  WRITELN('Geef je invoer');
  READLN(input);
  IF Length(input) > 60 THEN inp;
END;

PROCEDURE proces;
BEGIN
  FOR i:=1 TO Length(input) DO
     DELETE (input,Pos('a',input),1);
   FOR i:=1 TO Length(input) DO
     DELETE (input,Pos('e',input),1);
   FOR i:=1 TO Length(input) DO
     DELETE (input,Pos('i',input),1);
   FOR i:=1 TO Length(input) DO
     DELETE (input,Pos('o',input),1);
   FOR i:=1 TO Length(input) DO
     DELETE (input,Pos('u',input),1);
   FOR i:=1 TO Length(input) DO
     DELETE (input,Pos('y',input),1);
END;

BEGIN
   inp;
   proces;
   WRITELN(input);
   READLN();
END.

