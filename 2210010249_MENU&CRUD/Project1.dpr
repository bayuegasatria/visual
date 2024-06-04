program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {loginform},
  Unit3 in 'Unit3.pas' {kategoriform};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tloginform, loginform);
  Application.CreateForm(Tkategoriform, kategoriform);
  Application.Run;
end.
