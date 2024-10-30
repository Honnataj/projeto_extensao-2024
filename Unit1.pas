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
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Unit_responsavel, Unit_setor,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDConnection1: TFDConnection;
    FDLocalSQL1: TFDLocalSQL;
    Button_responsavel: TButton;
    Button_setor: TButton;
    Button_item: TButton;
    Button_local_retirada: TButton;
    Button_requerimento: TButton;
    ImagePeao: TImage;
    procedure buttonAdicionarClick(Sender: TObject);
    procedure buttonAlterarClick(Sender: TObject);
    procedure buttonExcluirClick(Sender: TObject);
    procedure buttonSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button_responsavelClick(Sender: TObject);
    procedure Button_setorClick(Sender: TObject);
    procedure Button_itemClick(Sender: TObject);
    procedure Button_local_retiradaClick(Sender: TObject);
    procedure Button_requerimentoClick(Sender: TObject);
    procedure ImagePeaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit_item, Unit_local_retirada, Unit_requerimento;

procedure TForm1.buttonAdicionarClick(Sender: TObject); // RETIRAR
begin
  //TFDTable_responsavel.Append;
end;

procedure TForm1.buttonAlterarClick(Sender: TObject);
begin
  //TFDTable1.Edit;
end;

procedure TForm1.buttonExcluirClick(Sender: TObject);
begin
  //TFDTable1.Delete;
end;

procedure TForm1.buttonSalvarClick(Sender: TObject);
begin
  //TFDTable1.Post;
end;

procedure TForm1.Button_itemClick(Sender: TObject);
begin
  Form_item.Show;
end;

procedure TForm1.Button_local_retiradaClick(Sender: TObject);
begin
  Form_local_retirada.Show;
end;

procedure TForm1.Button_requerimentoClick(Sender: TObject);
begin
  Form_requerimento.Show;
end;

procedure TForm1.Button_responsavelClick(Sender: TObject);
begin
  Form_responsavel.Show;
end;


procedure TForm1.Button_setorClick(Sender: TObject);
begin
  Form_setor.Show;
end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //TFDTable1.Close();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //TFDTable1.Open();
end;


  procedure TForm1.ImagePeaoClick(Sender: TObject);
begin

end;

//Text := Copy(TFDTable1valorVarchar.AsString, 1, 50);

end.
