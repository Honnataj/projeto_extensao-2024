﻿unit Unit1;

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
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

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
    FDQuery1: TFDQuery;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image2: TImage;
    Label4: TLabel;
    procedure Button_responsavelClick(Sender: TObject);
    procedure Button_itemClick(Sender: TObject);
    procedure Button_local_retiradaClick(Sender: TObject);
    procedure Button_requerimentoClick(Sender: TObject);
    procedure Button_setorClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit_item, Unit_local_retirada, Unit_requerimento,
  Unit_consultaRequerimento;

procedure TForm1.Button1Click(Sender: TObject);
var
  textoCSV: TStringList;
  linha: string;
  consultaSQL: string;
  i: Integer;
begin
  consultaSQL := 'SELECT r.data_requerimento AS Data, r.quantidade AS Quantidade, item.nome AS Item, res.nome AS Requerente, setor.nome AS Setor, r.requerente_nao_responsavel AS ''Requerente não oficial'', lr.nome AS ''Local de retirada'' FROM TB_requerimento AS r left join TB_responsavel AS res ON res.codigo = r.requerente_responsavel_codigo inner join TB_item AS item on item.codigo = r.item_codigo inner join TB_local_retirada AS lr ON lr.codigo = r.local_retirada_codigo inner join TB_setor AS setor on setor.codigo = r.setor_codigo';
  linha := '';
  textoCSV := TStringList.Create;
  with FDQuery1 do begin
    Close;
    SQL.Clear;
    SQL.Add(consultaSQL);
    Open;

    for i := 0 to Fields.Count-1 do
    begin
      if linha = '' then linha := Fields[i].FieldName
      else linha := linha + ';' + Fields[i].FieldName;
    end;
    textoCSV.Add(linha);
    linha := '';

    while not Eof do
    begin
      for i := 0 to Fields.Count-1 do
      begin
          if linha = '' then linha := FieldByName(Fields[i].FieldName).AsString
          else linha := linha + ';' + FieldByName(Fields[i].FieldName).AsString;
      end;
      textoCSV.Add(linha);
      linha := '';
      next;
    end;
  end;
  textoCSV.SaveToFile('relatorio.csv');
  ShowMessage('Relatório criado com sucesso!');
end;



procedure TForm1.Button_itemClick(Sender: TObject);
var
  LForm_item : TForm_item;
begin
  LForm_item := TForm_item.Create(nil);
  try
    LForm_item.ShowModal;
  finally
    LForm_item.Free;
  end;
end;

procedure TForm1.Button_local_retiradaClick(Sender: TObject);
var
  LForm_local_retirada : TForm_local_retirada;
begin
  LForm_local_retirada := TForm_local_retirada.Create(nil);
  try
    LForm_local_retirada.ShowModal;
  finally
    LForm_local_retirada.Free;
  end;
end;

procedure TForm1.Button_requerimentoClick(Sender: TObject);
var
  LForm_requerimento : TForm_requerimento;
begin
  LForm_requerimento := TForm_requerimento.Create(nil);
  try
    LForm_requerimento.ShowModal;
  finally
    LForm_requerimento.Free;
  end;
end;

procedure TForm1.Button_responsavelClick(Sender: TObject);
var
  LForm_responsavel : TForm_responsavel;
begin
  LForm_responsavel := TForm_responsavel.Create(nil);
  try
    LForm_responsavel.ShowModal;
  finally
    LForm_responsavel.Free;
  end;
end;

procedure TForm1.Button_setorClick(Sender: TObject);
var
  LForm_setor : TForm_setor;
begin
  LForm_setor := TForm_setor.Create(nil);
  try
    LForm_setor.ShowModal;
  finally
    LForm_setor.Free;
  end;
end;

  //Text := Copy(TFDTable1valorVarchar.AsString, 1, 50);

end.
