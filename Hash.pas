//Модуль для вычисления хэш-функции для заданной строки
unit Hash;

interface

var
  mwHashTable: array[#0..#255] of byte;

function Hashf(const AString: string): Integer;
procedure InitHash;

implementation

//Построение хэш-таблицы:
procedure InitHash;
var
  i, k: Char;
  Temp: Byte;
begin
  for i := #0 to #255 do
  begin
    mwHashTable[i] := Ord(i);
  end;
  RandSeed := 255;
  for i := #1 to #255 do
  begin
    repeat
      k := Char(Random(255));
    until k <> #0;
    Temp := mwHashTable[i];
    mwHashTable[i] := mwHashTable[k];
    mwHashTable[k] := Temp;
  end;
end;

//Вычисление хэш-функции для заданной строки:
function Hashf(const AString: string): Integer;
var
  i: Integer;
begin
  InitHash;

  Result := 0;
  for i := 1 to Length(AString) do
  begin
    Result := (Result shr 4) xor (((Result xor mwHashTable[AString[i]]) and $F) * $1000);
    Result := (Result shr 4) xor (((Result xor (ord(mwHashTable[AString[i]]) shr 4)) and $F) * $1000);
  end;
  if Result = 0 then
    Result := Length(AString) mod 8 + 1;
end;


end.
