unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  Tkategoriform = class(TForm)
    Label1: TLabel;
    nmkategori: TEdit;
    insert: TButton;
    update: TButton;
    delete: TButton;
    DBGrid1: TDBGrid;
    innama: TEdit;
    Label2: TLabel;
    cari: TButton;
    ZConnection1: TZConnection;
    query: TZQuery;
    DataSource1: TDataSource;
    home: TButton;
    procedure insertClick(Sender: TObject);
    procedure homeClick(Sender: TObject);
    procedure updateClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure deleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kategoriform: Tkategoriform;
  a: string;

implementation

uses Unit1,Unit2;

{$R *.dfm}

procedure Tkategoriform.insertClick(Sender: TObject);
begin
query.SQL.Clear;
query.SQL.Add('insert into kategori values(null,"'+nmkategori.Text+'")');
query.ExecSQL;

query.SQL.Clear;
query.SQL.Add('Select * from kategori');
query.Open;
end;

procedure Tkategoriform.homeClick(Sender: TObject);
begin
kategoriform.Hide;
Form1.Show;
end;

procedure Tkategoriform.updateClick(Sender: TObject);
begin
query.SQL.Clear;
query.SQL.Add('update kategori set name ="'+nmkategori.Text+'" where kategori.id_kategori = "'+a+'"');
query.ExecSQL;

query.SQL.Clear;
query.SQL.Add('Select * from kategori');
query.Open;

ShowMessage('UPDATE SUCCES');

end;

procedure Tkategoriform.DBGrid1CellClick(Column: TColumn);
begin
nmkategori.text := query.Fields[1].AsString;
a := query.Fields[0].AsString;
end;

procedure Tkategoriform.deleteClick(Sender: TObject);
begin
query.SQL.Clear;
query.SQL.Add('delete from kategori where kategori.id_kategori= "'+a+'"');
query.ExecSQL;

query.SQL.Clear;
query.SQL.Add('Select * from kategori');
query.Open;

ShowMessage('DELETE SUCCES');

end;

end.
