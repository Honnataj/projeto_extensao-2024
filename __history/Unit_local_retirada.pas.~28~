unit Unit_local_retirada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage;

type
  TForm_local_retirada = class(TForm)
    Label2: TLabel;
    FDQuery1: TFDQuery;
    Button1: TButton;
    Edit1: TEdit;
    Button_consulta: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button_consultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_local_retirada: TForm_local_retirada;

implementation

{$R *.dfm}

uses Unit_consultaLocalRetirada;

procedure TForm_local_retirada.Button1Click(Sender: TObject);
var
  nome: string;
begin
  nome := Edit1.Text;
  if Trim(nome) <> '' then
  begin
    with FDQuery1 do begin
      SQL.Clear;
      SQL.Add('INSERT INTO TB_local_retirada VALUES (null, :Nome);');
      ParamByName('nome').AsString := nome;
      Command.CommandKind := skInsert;
      ExecSQL;
    end;
    showMessage('LOCAL DE RETIRADA ADICIONADO COM SUCESSO!');
    Edit1.Clear;
  end
  else showMessage('Por favor, indique o nome do local de retirada');
end;



procedure TForm_local_retirada.Button_consultaClick(Sender: TObject);
var
  LForm_consultaLocalRetirada: TForm_consultaLocalRetirada;
begin
  LForm_consultaLocalRetirada := TForm_consultaLocalRetirada.Create(nil);
  try
    LForm_consultaLocalRetirada.ShowModal;
  finally
    LForm_consultaLocalRetirada.Free;
  end;
end;

end.
