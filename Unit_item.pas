unit Unit_item;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Mask, Vcl.ExtCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TForm_item = class(TForm)
    TFDTable_item: TFDTable;
    TFDTable_itemcodigo: TFDAutoIncField;
    TFDTable_itemnome: TWideMemoField;
    DataSource1: TDataSource;
    ButtonAdicionar: TButton;
    ButtonExcluir: TButton;
    DBGrid1: TDBGrid;
    TFDTable_itemlocal_retirada_codigo: TIntegerField;
    nomeEdit: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    ComboBox1: TComboBox;
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonExcluirClick(Sender: TObject);
    procedure TFDTable_itemnomeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_item: TForm_item;

implementation

{$R *.dfm}

procedure TForm_item.ButtonAdicionarClick(Sender: TObject);
begin
  TFDTable_item.Append;
end;

procedure TForm_item.ButtonExcluirClick(Sender: TObject);
begin
  TFDTable_item.Delete;
end;

procedure TForm_item.TFDTable_itemnomeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := Copy(TFDTable_itemnome.AsString, 1, 50);
end;

end.
