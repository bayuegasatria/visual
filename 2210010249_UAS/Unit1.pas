unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass, frxDBSet;

type
  Tkustomer = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    nama: TEdit;
    nik: TEdit;
    tlp: TEdit;
    email: TEdit;
    alamat: TEdit;
    insert: TButton;
    update: TButton;
    delete: TButton;
    cancel: TButton;
    new: TButton;
    DBGrid1: TDBGrid;
    cari: TEdit;
    ZConnection1: TZConnection;
    querykustomer: TZQuery;
    datakustomer: TDataSource;
    yes: TRadioButton;
    no: TRadioButton;
    Label7: TLabel;
    Label8: TLabel;
    ldiskon: TLabel;
    kustomerdataset: TfrxDBDataset;
    report: TfrxReport;
    reportbtn: TButton;
    procedure default;
    procedure newClick(Sender: TObject);
    procedure yesClick(Sender: TObject);
    procedure noClick(Sender: TObject);
    procedure cancelClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure insertClick(Sender: TObject);
    procedure updateClick(Sender: TObject);
    procedure deleteClick(Sender: TObject);
    procedure cariChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure reportbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kustomer: Tkustomer;
  a,member : string;
  b : integer;

implementation

{$R *.dfm}

procedure Tkustomer.default;
begin
        new.Enabled := true;
        insert.Enabled := false;
        update.Enabled := false;
        delete.Enabled := false;
        cancel.Enabled := false;
        nama.Enabled := false;
        nama.Text := '';
        nik.Enabled := false;
        nik.Text := '';
        tlp.Enabled := false;
        tlp.Text := '';
        email.Enabled := false;
        email.Text := '';
        alamat.Enabled := false;
        alamat.Text := '';
        ZConnection1.Connect;
        querykustomer.Active := True;
        yes.Enabled := false;
        no.Enabled := false;
        yes.Checked := false;
        no.Checked := false;
        ldiskon.caption := '';
end;

procedure Tkustomer.newClick(Sender: TObject);
begin
new.Enabled := false;
insert.Enabled := True;
nama.Enabled := True;
nik.Enabled := True;
tlp.Enabled := True;
email.Enabled := True;
alamat.Enabled := True;
cancel.Enabled := True;
yes.Enabled := True;
no.Enabled := True;
end;

procedure Tkustomer.yesClick(Sender: TObject);
begin
ldiskon.Caption := '10%';
no.Checked := false;
end;

procedure Tkustomer.noClick(Sender: TObject);
begin
ldiskon.Caption := '5%';
yes.Checked := false;
end;

procedure Tkustomer.cancelClick(Sender: TObject);
begin
default;
end;

procedure Tkustomer.DBGrid1CellClick(Column: TColumn);
begin
new.Enabled := false;
nama.Enabled := True;
nik.Enabled := True;
tlp.Enabled := True;
email.Enabled := True;
alamat.Enabled := True;
cancel.Enabled := True;
update.Enabled := True;
delete.Enabled := True;
cancel.Enabled := True;
yes.Enabled := True;
no.Enabled := True;
nama.text := querykustomer.Fields[2].AsString;
nik.Text := querykustomer.Fields[1].AsString;
alamat.Text:= querykustomer.Fields[5].AsString;
tlp.Text:= querykustomer.Fields[3].AsString;
email.text:= querykustomer.Fields[4].AsString;
a := querykustomer.Fields[0].AsString;
if  ( querykustomer.Fields[6].AsString = 'yes' ) then
begin
yes.Checked := True;
no.Checked := false;
ldiskon.Caption := '10%';
end;
if  ( querykustomer.Fields[6].AsString = 'no' ) then
begin
yes.Checked := False;
no.Checked := True;
ldiskon.Caption := '5%';
end;
end;

procedure Tkustomer.insertClick(Sender: TObject);
begin
if (yes.Checked = True) then
begin
member := 'yes';
end;
if (no.Checked = True) then
begin
member := 'no';
end;
if (nama.Text = '') or (nik.Text = '') or (tlp.Text ='') or (email.Text ='') or (alamat.Text='') or ((yes.Checked = false) and (no.Checked = false)) then
begin
  showmessage ('Data Tidak Boleh Kosong');
end

else if querykustomer.Locate('nik',nik.Text,[]) then
begin
  showmessage ('NIK Kustomer '+nik.Text+'Sudah Ada');
end
else
begin
with querykustomer do
begin
querykustomer.SQL.Clear;
querykustomer.SQL.Add('insert into kustomer values(null,"'+nik.Text+'","'+nama.Text+'","'+tlp.Text+'","'+email.Text+'","'+alamat.Text+'","'+member+'")');
querykustomer.ExecSQL;

querykustomer.SQL.Clear;
querykustomer.SQL.Add('Select * from kustomer');
querykustomer.Open;
end;
showmessage ('Data Berhasil Disimpan');
end;
default;
end;

procedure Tkustomer.updateClick(Sender: TObject);
begin
if (yes.Checked = True) then
begin
member := 'yes';
end;
if (no.Checked = True) then
begin
member := 'no';
end;
if (nama.Text = '') or (nik.Text = '') or (tlp.Text ='') or (email.Text ='') or (alamat.Text='')or ((yes.Checked = false) and (no.Checked = false)) then
begin
  ShowMessage('Data Tidak Boleh Kosong');
end
else if (nik.Text <> querykustomer.Fields[1].AsString)  then
begin
  showmessage ('NIK Kustomer tidak boleh diubah');
end
else
begin
with querykustomer do
begin
querykustomer.SQL.Clear;
querykustomer.SQL.Add('update kustomer set nama ="'+nama.Text+'" ,nik ="'+nik.Text+'" ,telp ="'+tlp.Text+'" ,email ="'+email.Text+'" ,alamat ="'+alamat.Text+'" , member ="'+member+'"  where kustomer.id = "'+a+'"');
querykustomer.ExecSQL;

querykustomer.SQL.Clear;
querykustomer.SQL.Add('Select * from kustomer');
querykustomer.Open;
end;
ShowMessage('UPDATE SUCCES');
end;
default;
end;

procedure Tkustomer.deleteClick(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini ?',mtwarning,[mbYes,mbNo],0)=mryes then
begin
with querykustomer do
begin
querykustomer.SQL.Clear;
querykustomer.SQL.Add('delete from kustomer where kustomer.id = "'+a+'"');
querykustomer.ExecSQL;

querykustomer.SQL.Clear;
querykustomer.SQL.Add('Select * from kustomer');
querykustomer.Open;
end;

ShowMessage('DELETE SUCCES');
end;
default;
end;

procedure Tkustomer.cariChange(Sender: TObject);
begin
with querykustomer do
  begin
    SQL.Clear;
    SQL.Add('select*from kustomer where nama like "%'+cari.Text+'%"');
    Open;
  end;end;

procedure Tkustomer.FormShow(Sender: TObject);
begin
default;
end;

procedure Tkustomer.reportbtnClick(Sender: TObject);
begin
report.ShowReport();
end;

end.
