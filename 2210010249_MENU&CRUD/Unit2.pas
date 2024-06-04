unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tloginform = class(TForm)
    user: TEdit;
    loginbtn: TButton;
    procedure loginbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  loginform: Tloginform;

implementation

uses Unit1,Unit3;

{$R *.dfm}

procedure Tloginform.loginbtnClick(Sender: TObject);
begin

  if user.Text = 'admin' then
  begin
  Form1.mm1.Items[1].Visible := True;
  Form1.mm1.Items[2].Visible := False;
  Form1.mm1.Items[3].Visible := False;
  end;

  if user.text = 'kasir' then
  begin
  Form1.mm1.Items[1].Visible := False;
  Form1.mm1.Items[2].Visible := True;
  Form1.mm1.Items[3].Visible := False;
  end;

  if user.text = 'pemilik' then
  begin
  Form1.mm1.Items[1].Visible := False;
  Form1.mm1.Items[2].Visible := False;
  Form1.mm1.Items[3].Visible := True;
  end;

  loginform.Close;




end;

end.
