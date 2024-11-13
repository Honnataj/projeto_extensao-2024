unit Unit_setor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm_setor = class(TForm)
    DataSource1: TDataSource;
    TFDTable_setor: TFDTable;
    ButtonAdicionar: TButton;
    ButtonExcluir: TButton;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    Button1: TButton;
    ComboBox1: TComboBox;
    TFDTable_setorcodigo: TFDAutoIncField;
    TFDTable_setornome: TWideMemoField;
    TFDTable_setorresponsavel_codigo: TIntegerField;
    procedure ButtonExcluirClick(Sender: TObject);
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_setor: TForm_setor;

implementation

{$R *.dfm}

procedure TForm_setor.Button1Click(Sender: TObject);
begin
  with FDQuery1.SQL do begin
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('INSERT INTO TB_setor VALUES (null, ''Nome1'', 8);');
  end;
  FDQuery1.Open;
  // FDQuery.Open;
  // FDquery1.NextRecordSet;
end;

procedure TForm_setor.ButtonAdicionarClick(Sender: TObject);
begin
  TFDTable_setor.Append;
end;

procedure TForm_setor.ButtonExcluirClick(Sender: TObject);
begin
  TFDTable_setor.Delete;
end;

procedure TForm_setor.FormActivate(Sender: TObject);
var
  s : string;
begin
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('SELECT nome FROM TB_responsavel;');
  FDQuery1.Open;
  ComboBox1.Items.Clear;
  while not FDQuery1.Eof do
  begin
    s := FDQuery1.Fields.Fields[0].AsString;
    ComboBox1.Items.Add(s);
    FDQuery1.Next;
  end;
  FDQuery1.Close;
end;

end.
