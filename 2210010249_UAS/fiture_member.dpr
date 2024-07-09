program fiture_member;

uses
  Forms,
  Unit1 in 'Unit1.pas' {kustomer};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tkustomer, kustomer);
  Application.Run;
end.
