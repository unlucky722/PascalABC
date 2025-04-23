Program RandomDiagonalAverage;
Uses crt;

Const
  N = 4;  // Розмір масиву

Var
  A: array[1..N, 1..N] of Integer;   // Двовимірний масив
  i, j: Integer;
  sum: Integer;
  average: Real;
  usedNumbers: array of Boolean;  // Масив для відслідковування використаних чисел
  randomNumber, k: Integer;

Procedure FillArray;
Var
  numbers: array of Integer;
  idx: Integer;
Begin
  SetLength(numbers, 201);  // Від -100 до 100 включно
  SetLength(usedNumbers, 201);  // Масив для відслідковування, чи використано число

  // Створення списку можливих чисел від -100 до 100
  For k := -100 to 100 do
    numbers[k + 100] := k;

  Randomize;  // Ініціалізація генератора випадкових чисел

  // Заповнення масиву A випадковими неповторюваними числами
  For i := 1 to N do
    For j := 1 to N do
    Begin
      Repeat
        randomNumber := numbers[Random(201)];  // Випадкове число з можливих
      Until not usedNumbers[randomNumber + 100];  // Перевірка на унікальність

      A[i, j] := randomNumber;  // Присвоєння числа в масив
      usedNumbers[randomNumber + 100] := True;  // Позначення числа як використаного
    End;
End;

Begin
  clrscr;

  // Заповнення масиву та виведення
  FillArray;
  Writeln('Згенерований масив:');
  For i := 1 to N do
  Begin
    For j := 1 to N do
    Begin
      Write(A[i, j]:5);  // Виведення з вирівнюванням
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
