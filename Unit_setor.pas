﻿unit Unit_setor;

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
    Label2: TLabel;
    Label3: TLabel;
    FDQuery1: TFDQuery;
    Button1: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button_consulta: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button_consultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_setor: TForm_setor;
  codigoResponsavel: array of Integer;

implementation

{$R *.dfm}

uses Unit_consultaSetor;

procedure TForm_setor.Button1Click(Sender: TObject);
var
  nomeSetor: string;
  indexResponsavel: Integer;
  camposValidos: boolean;
begin
  nomeSetor := Edit1.Text;
  indexResponsavel := ComboBox1.ItemIndex;

  // erros
  camposValidos := True;

  // NOME: campo vazio
  if Trim(nomeSetor) = '' then
  begin
    showMessage('O campo "NOME" não pode estar vazio!');
    camposValidos := False;
  end
  // COMBOBOX: não selecionado
  else if (ComboBox1.ItemIndex = -1) then
  begin
    showMessage('Por favor, indique o responsável pelo setor.');
    camposValidos := False;
  end;

  if camposValidos then
  begin
    with FDQuery1 do begin
    SQL.Clear;
    SQL.Add('INSERT INTO TB_setor VALUES (null, :NomeSetor , :CodigoResponsavel);');
    ParamByName('nomeSetor').AsString := nomeSetor;
    ParamByName('codigoResponsavel').AsInteger := codigoResponsavel[indexResponsavel];
    Command.CommandKind := skInsert;
    ExecSQL;
    end;
    showMessage('Setor adicionado com sucesso!');
    Edit1.Clear;
    ComboBox1.ClearSelection;
  end;
  // FDQuery.Open;
  // FDquery1.NextRecordSet;
end;

procedure TForm_setor.Button_consultaClick(Sender: TObject);
var
LForm_consultaRequerimento: TForm_consultaSetor;
begin
  LForm_consultaRequerimento := TForm_consultaSetor.Create(nil);
  try
    LForm_consultaRequerimento.ShowModal;
  finally
    LForm_consultaRequerimento.Free;
  end;
end;

procedure TForm_setor.FormActivate(Sender: TObject);
var
  s: string;
  i, contador: Integer;
begin
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('SELECT COUNT(*) FROM TB_Responsavel;');
  FDQuery1.Open;
  contador := FDQuery1.Fields.Fields[0].AsInteger;

  SetLength(codigoResponsavel, contador); // aloca memória, criando o vetor
  i := 0;

  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('SELECT codigo, nome FROM TB_responsavel;');
  FDQuery1.Open;
  ComboBox1.Items.Clear;
  while not FDQuery1.Eof do
  begin
    codigoResponsavel[i] := FDQuery1.Fields.Fields[0].AsInteger;
    i := i + 1;
    s := FDQuery1.Fields.Fields[1].AsString;
    ComboBox1.Items.Add(s);
    FDQuery1.Next;
  end;
  FDQuery1.Close;
end;

end.
