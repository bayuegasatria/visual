unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  Tsatuan = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    nama: TEdit;
    desk: TEdit;
    DBGrid1: TDBGrid;
    insert: TButton;
    update: TButton;
    delete: TButton;
    cancel: TButton;
    new: TButton;
    cari: TEdit;
    ZConnection1: TZConnection;
    querysatuan: TZQuery;
    datasatuan: TDataSource;
    procedure default;
    procedure FormShow(Sender: TObject);
    procedure insertClick(Sender: TObject);
    procedure updateClick(Sender: TObject);
    procedure deleteClick(Sender: TObject);
    procedure newClick(Sender: TObject);
    procedure cancelClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure cariChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  satuan: Tsatuan;
  a : string;

implementation

{$R *.dfm}

{ Tsatuan }

procedure Tsatuan.default;
begin
        new.Enabled := true;
        insert.Enabled := false;
        update.Enabled := false;
        delete.Enabled := false;
        cancel.Enabled := false;
        nama.Enabled := false;
        nama.Text := '';
        desk.Enabled := False;
        desk.Text := '';
        ZConnection1.Connect;
        querysatuan.Active := True;
end;

procedure Tsatuan.FormShow(Sender: TObject);
begin
default;
end;

procedure Tsatuan.insertClick(Sender: TObject);
begin
if (nama.Text = '') or (desk.Text = '') then
begin
  showmessage ('Data Tidak Boleh Kosong');
end

else if querysatuan.Locate('name',nama.Text,[]) then
begin
  showmessage ('Nama Satuan '+nama.Text+'Sudah Ada');
end

else
begin
with querysatuan do
begin
querysatuan.SQL.Clear;
querysatuan.SQL.Add('insert into satuan values(null,"'+nama.Text+'","'+desk.Text+'")');
querysatuan.ExecSQL;

querysatuan.SQL.Clear;
querysatuan.SQL.Add('Select * from satuan');
querysatuan.Open;
end;
showmessage ('Data Berhasil Disimpan');
end;
default;
end;

procedure Tsatuan.updateClick(Sender: TObject);
begin
if (nama.Text = '') or (desk.Text = '') then
begin
  ShowMessage('Data Tidak Boleh Kosong');
end

else if nama.Text =  querysatuan.Fields[1].AsString then
begin
  ShowMessage ('Nama Satuan '+nama.Text+'Tidak Ada Perubahan');
end

else
begin
with querysatuan do
begin
querysatuan.SQL.Clear;
querysatuan.SQL.Add('update satuan set name ="'+nama.Text+'" ,deskripsi ="'+desk.Text+'" where satuan.id_satuan = "'+a+'"');
querysatuan.ExecSQL;

querysatuan.SQL.Clear;
querysatuan.SQL.Add('Select * from satuan');
querysatuan.Open;
end;
ShowMessage('UPDATE SUCCES');
end;
default;
end;

procedure Tsatuan.deleteClick(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini ?',mtwarning,[mbYes,mbNo],0)=mryes then
begin
with querysatuan do
begin
querysatuan.SQL.Clear;
querysatuan.SQL.Add('delete from satuan where satuan.id_satuan= "'+a+'"');
querysatuan.ExecSQL;

querysatuan.SQL.Clear;
querysatuan.SQL.Add('Select * from satuan');
querysatuan.Open;
end;
ShowMessage('DELETE SUCCES');
end;
default;
end;


procedure Tsatuan.newClick(Sender: TObject);
begin
new.Enabled := false;
insert.Enabled := True;
nama.Enabled := True;
desk.Enabled := True;
cancel.Enabled := True;
end;

procedure Tsatuan.cancelClick(Sender: TObject);
begin
default;
end;

procedure Tsatuan.DBGrid1CellClick(Column: TColumn);
begin
nama.Enabled := True;
desk.Enabled := True;
update.Enabled := True;
delete.Enabled := True;
cancel.Enabled := True;
nama.text := querysatuan.Fields[1].AsString;
desk.Text := querysatuan.Fields[2].AsString;
a := querysatuan.Fields[0].AsString;
end;

procedure Tsatuan.cariChange(Sender: TObject);
begin
 with querysatuan do
  begin
    SQL.Clear;
    SQL.Add('select*from satuan where name like "%'+cari.Text+'%"');
    Open;
  end;
end;

end.
