unit Unit_responsavel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm_responsavel = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    DBGrid1: TDBGrid;
    ButtonAdicionar: TButton;
    ButtonExcluir: TButton;
    TFDTable_responsavel: TFDTable;
    TFDTable_responsavelcodigo: TFDAutoIncField;
    TFDTable_responsavelnome: TWideMemoField;
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_responsavel: TForm_responsavel;

implementation

{$R *.dfm}


procedure TForm_responsavel.ButtonAdicionarClick(Sender: TObject);
begin
  TFDTable_responsavel.Append;
end;

procedure TForm_responsavel.ButtonExcluirClick(Sender: TObject);
begin
  TFDTable_responsavel.Delete;
end;

procedure TForm_responsavel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TFDTable_responsavel.Close;
end;

procedure TForm_responsavel.FormCreate(Sender: TObject);
begin
  TFDTable_responsavel.Open;
end;

end.
