﻿unit Unit_item;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Mask, Vcl.ExtCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg;

type
  TForm_item = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    FDQuery1: TFDQuery;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button_consulta: TButton;
    Image2: TImage;
    Image3: TImage;
    Image1: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button_consultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_item: TForm_item;
  codigoLocalRetirada: array of Integer;

implementation

{$R *.dfm}

uses Unit_consultaItem;

procedure TForm_item.Button1Click(Sender: TObject);
var
  nomeItem: string;
  indexLocalRetirada: Integer;
  camposValidos: boolean;
begin
  nomeItem := Edit1.Text;
  indexLocalRetirada := ComboBox1.ItemIndex;

  // erros
  camposValidos := True;

  // NOME: campo vazio
  if Trim(nomeItem) = '' then
  begin
    showMessage('O campo "NOME" não pode estar vazio!');
    camposValidos := False;
  end
  // COMBOBOX: não selecionado
  else if (ComboBox1.ItemIndex = -1) then
  begin
    showMessage('Por favor, indique o local de retirada habitual do item.');
    camposValidos := False;
  end;

  if camposValidos then
  begin
    with FDQuery1.SQL do begin
      FDQuery1.SQL.Clear;
      FDQuery1.SQL.Add('INSERT INTO TB_item VALUES (null, :NomeItem, :CodigoLocalRetirada);');
      FDQuery1.ParamByName('nomeItem').AsString := nomeItem;
      FDQuery1.ParamByName('codigoLocalRetirada').AsInteger := codigoLocalRetirada[indexLocalRetirada];
      FDQuery1.Command.CommandKind := skInsert;
      FDQuery1.ExecSQL;
    end;
    showMessage('Item adicionado com sucesso!');
    Edit1.Clear;
    ComboBox1.ClearSelection;
  end;
end;

procedure TForm_item.Button_consultaClick(Sender: TObject);
var
  LForm_consultaItem: TForm_consultaItem;
begin
  LForm_consultaItem := TForm_consultaItem.Create(nil);
  try
    LForm_consultaItem.ShowModal;
  finally
    LForm_consultaItem.Free;
  end;
end;

procedure TForm_item.FormActivate(Sender: TObject);
var
  s: string;
  i, contador: Integer;
begin
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('SELECT COUNT(*) FROM TB_local_retirada;');
  FDQuery1.Open;
  contador := FDQuery1.Fields.Fields[0].AsInteger;
  i := 0;
  SetLength(codigoLocalRetirada, contador); // aloca memória
  FDQuery1.Close;
  FDQuery1.SQL.Clear;

  FDQuery1.SQL.Add('SELECT codigo, nome FROM TB_local_retirada;');
  FDQuery1.Open;
  ComboBox1.Items.Clear;
  while not FDQuery1.Eof do
  begin
    codigoLocalRetirada[i] := FDQuery1.Fields.Fields[0].AsInteger;
    i := i + 1;
    s := FDQuery1.Fields.Fields[1].AsString;
    ComboBox1.Items.Add(s);
    FDQuery1.Next;
  end;
  FDQuery1.Close;
end;

end.
