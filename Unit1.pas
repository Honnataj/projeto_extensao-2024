unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Phys.SQLiteDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.SQLiteVDataSet, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDConnection1: TFDConnection;
    FDLocalSQL1: TFDLocalSQL;
    FDQuery1: TFDQuery;
    TFDTable1: TFDTable;
    TFDTable1codigo: TFDAutoIncField;
    TFDTable1valorInt: TIntegerField;
    TFDTable1valorVarchar: TWideMemoField;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    DBGrid1: TDBGrid;
    buttonAdicionar: TButton;
    buttonAlterar: TButton;
    buttonExcluir: TButton;
    buttonSalvar: TButton;
    procedure buttonAdicionarClick(Sender: TObject);
    procedure buttonAlterarClick(Sender: TObject);
    procedure buttonExcluirClick(Sender: TObject);
    procedure buttonSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TFDTable1valorVarcharGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  Memo = class
  public
    procedure DBGridOnGetText(Sender: TField; var aText: string; DisplayText: boolean);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure Memo.DBGridOnGetText(Sender: TField; var aText: string; DisplayText: Boolean);
begin
  if (DisplayText) then
    aText := Sender.AsString;
end;

procedure TForm1.buttonAdicionarClick(Sender: TObject);
begin
  TFDTable1.Append;
end;

procedure TForm1.buttonAlterarClick(Sender: TObject);
begin
  TFDTable1.Edit;
end;

procedure TForm1.buttonExcluirClick(Sender: TObject);
begin
  TFDTable1.Delete;
end;

procedure TForm1.buttonSalvarClick(Sender: TObject);
begin
  TFDTable1.Post;
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  MemoFieldReveal: Memo;
begin

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TFDTable1.Close();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TFDTable1.Open();
end;

procedure TForm1.TFDTable1valorVarcharGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := Copy(TFDTable1valorVarchar.AsString, 1, 50);
end;

end.
