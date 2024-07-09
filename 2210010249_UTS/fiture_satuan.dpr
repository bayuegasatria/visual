program fiture_satuan;

uses
  Forms,
  Unit1 in 'Unit1.pas' {satuan};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tsatuan, satuan);
  Application.Run;
end.
