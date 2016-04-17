program testmaker;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,sysutils,strutils
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  finaltext,finaltexta:textFile;
  answer:array [1..10] of string;
  filename,filenamea:string;
  question:array [1..10] of string;
  c,c2:integer;
begin
  writeln('What do you want the test to be called? (Without file extension, but with file');
  writeln('address if you want to save it in a specific location. If no file address is');
  writeln('given the program will save the questions where the program is on your hard');
  writeln('drive, usb stick etc.)');
  readln(filename);
  filenamea:=filename+' answers.txt';
  filename:=filename+' questions.txt';
  //no 1
  writeln('What is the first question?');
  readln(question[1]);
  writeln('What is its answer?');
  readln(answer[1]);
  //no2
  writeln('What is the second question?');
  readln(question[2]);
  writeln('What is its answer?');
  readln(answer[2]);
  //no3
  writeln('What is the third question?');
  readln(question[3]);
  writeln('What is its answer?');
  readln(answer[3]);
  //no4
  writeln('What is the fourth question?');
  readln(question[4]);
  writeln('What is its answer?');
  readln(answer[4]);
  //no5
  writeln('What is the fifth question?');
  readln(question[5]);
  writeln('What is its answer?');
  readln(answer[5]);
  //no6
  writeln('What is the sixth question?');
  readln(question[6]);
  writeln('What is its answer?');
  readln(answer[6]);
  //no7
  writeln('What is the seventh question?');
  readln(question[7]);
  writeln('What is its answer?');
  readln(answer[7]);
  //no8
  writeln('What is the eighth question?');
  readln(question[8]);
  writeln('What is its answer?');
  readln(answer[8]);
  //no9
  writeln('What is the ninth question');
  readln(question[9]);
  writeln('What is its answer?');
  readln(answer[9]);
  //no10
  writeln('What is the tenth question?');
  readln(question[10]);
  writeln('What is its answer?');
  readln(answer[10]);
  //end of writing q's and a's
 { //q1
  repeat
    begin
    question1:=question1+' ';
    end;
 until(length(question1)=100);
 //q2
 repeat
    begin
    question2:=question2+' ';
    end;
 until(length(question2)=100);
 //q3
 repeat
    begin
    question3:=question3+' ';
    end;
 until(length(question3)=100);
 //q4
 repeat
    begin
    question4:=question4+' ';
    end;
 until(length(question4)=100);
 //q5
 repeat
    begin
    question5:=question5+' ';
    end;
 until(length(question5)=100);
 //q6
 repeat
    begin
    question6:=question6+' ';
    end;
 until(length(question6)=100);
 //q7
 repeat
    begin
    question7:=question7+' ';
    end;
 until(length(question7)=100);
 //q8
 repeat
    begin
    question8:=question8+' ';
    end;
 until(length(question8)=100);
 //q9
 repeat
    begin
    question9:=question9+' ';
    end;
 until(length(question9)=100);
 //q10
 repeat
    begin
    question10:=question10+' ';
    end;
 until(length(question10)=100);
 //a1
 repeat
    begin
    answer1:=answer1+' ';
    end;
 until(length(answer1)=100);
 //a2
 repeat
    begin
    answer2:=answer2+' ';
    end;
 until(length(answer2)=100);
 //a3
 repeat
    begin
    answer3:=answer3+' ';
    end;
 until(length(answer3)=100);
 //a4
 repeat
    begin
    answer4:=answer4+' ';
    end;
 until(length(answer4)=100);
 //a5
 repeat
    begin
    answer5:=answer5+' ';
    end;
 until(length(answer5)=100);
 //a6
 repeat
    begin
    answer6:=answer6+' ';
    end;
 until(length(answer6)=100);
 //a7
 repeat
    begin
    answer7:=answer7+' ';
    end;
 until(length(answer7)=100);
 //a8
 repeat
    begin
    answer8:=answer8+' ';
    end;
 until(length(answer8)=100);
 //a9
 repeat
    begin
    answer9:=answer9+' ';
    end;
 until(length(answer9)=100);
 //a10
 repeat
    begin
    answer10:=answer10+' ';
    end;
 until(length(answer10)=100);}

 //assignFile(finaltext, filename);
 //append(finaltext);
 assignfile(finaltexta,filenamea);
 assignfile(finaltext,filename);
 rewrite(finaltext);
 rewrite(finaltexta);
 for c2:=1 to 10 do
begin
writeln(finaltext,question[c2]);
 end;
 for c :=1 to 10 do
begin
writeln(finaltexta,answer[c])
end;
closeFile(finaltext);
closeFile(finaltexta);
 //writing finaltext
//  finaltext:=question1+question2+question3+question4+question5+question6+question7+question8+question9+question10+answer1+answer2+answer3+answer4+answer5+answer6+answer7+answer8+answer9+answer10;

end.
