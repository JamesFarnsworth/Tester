program tester;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes,  crt, strutils, SysUtils, Math;


{$R *.res}
var
  fa:text;
  fq:text;
  testchosen:string;
  c,count3:integer;
  q:array [1..10]of string;
  a:array [1..10] of string;
  usera:string;
  score:integer;
  e:string;
begin
e:='false';
writeln('What test do you want to load? (do not include the file extension, but do');
writeln('include the file address if you saved the test with a specific file address)');
readln(testchosen);
assignfile(fq,testchosen+' questions.txt');
reset(fq);
assignfile(fa,testchosen+' answers.txt');
reset(fa);
for count3:= 1 to 10 do
begin
readln(fq,q[count3]);
readln(fa,a[count3]);
end;
repeat
clrscr;
for c:= 1 to 10 do
begin
clrScr;
writeln('Question ',c,': ',q[c]);
readln(usera);
if (usera=a[c])
 then
 begin
  score:=score+1;
 writeln('Correct!');
 end
else
begin
writeln('Incorrect');
end;
sleep(2000);
end;
clrscr;
writeln('You scored ',score,'!');
readln(e);
if (e='exit')or(e='quit')or(e='terminate')or(e='end')
then
begin
e:='true';
end;
until(e='true');
end.
