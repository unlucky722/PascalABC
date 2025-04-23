Program RandomDiagonalAverage;
Uses crt;

Const
  N = 4;                                // Розмір масиву

Var
  A: array[1..N, 1..N] of Integer;      // Двовимірний масив
  i, j: Integer;
  sum: Integer;
  average: Real;

Begin
  clrscr;
  Randomize;                            // Ініціалізація генератора випадкових чисел

  // Автоматичне заповнення та вивід масиву
  Writeln('Згенерований масив:');
  For i := 1 to N do
  Begin
    For j := 1 to N do
    Begin
      A[i, j] := Random(201) - 100;     // Випадкове число від -100 до 100
      Write(A[i, j]:5);                 // Вивід з вирівнюванням
    End;
    Writeln;
  End;

  // Обчислення середнього на головній діагоналі
  sum := 0;
  For i := 1 to N do
    sum := sum + A[i, i];
  average := sum / N;

  // Виведення результату
  Writeln('Середнє арифметичне головної діагоналі: ', average:0:2);
  Readln;
End.
