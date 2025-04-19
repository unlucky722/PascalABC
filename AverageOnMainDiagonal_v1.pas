Program SrednyeNaDiagonali;
Uses Crt;
Const N=4;
Var
  A: array[1..N, 1..N] of Integer;
  i, j: Integer;
  sum: Integer;
  average: Real;
Begin
  ClrScr;
  sum:=0;
  Writeln('Введіть елементи масиву ', N, 'x', N, ':');
  For i:=1 to N do
    For j:=1 to N do
    Begin
      Write('A[', i, ',', j, '] = ');
      Readln(A[i, j]);
    End;
  Writeln;
  Writeln('Масив:');
  For i:=1 to N do
  Begin
    For j:=1 to N do
      Write(A[i, j]:5);
    Writeln;
  End;
  For i:=1 to N do
    sum:=sum+A[i, i];
  average:=sum/N;
  Writeln;
  Writeln('Середнє арифметичне елементів головної діагоналі: ', average:0:2);

  Readln;
End.
