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
    Label2: TLabel;
    Button1: TButton;
    FDQuery1: TFDQuery;
    Edit1: TEdit;
    Button_consulta: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button_consultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_responsavel: TForm_responsavel;

implementation

{$R *.dfm}

uses Unit_consultaResponsavel;


procedure TForm_responsavel.Button1Click(Sender: TObject);
var
  nome : string;
begin
  nome := Edit1.Text;
  if Trim(nome) <> '' then
  begin
    with FDQuery1 do begin
      SQL.Clear;
      SQL.Add('INSERT INTO TB_responsavel VALUES (null, :Nome);');
      ParamByName('nome').AsString := nome;
      Command.CommandKind := skInsert;
      ExecSQL;
    end;
    showMessage('RESPONSÁVEL ADICIONADO COM SUCESSO! Para associá-lo a um setor, cadastre um setor na opção "Cadastro de setor" da página inicial.');
    Edit1.Clear;
  end
  else showMessage('Por favor, indique o nome do requerente.');
end;


procedure TForm_responsavel.Button_consultaClick(Sender: TObject);
var
  LForm_consultaResponsavel: TForm_consultaResponsavel;
begin
  LForm_consultaResponsavel := TForm_consultaResponsavel.Create(nil);
  try
    LForm_consultaResponsavel.ShowModal;
  finally
    LForm_consultaResponsavel.Free;
  end;

end;

end.
