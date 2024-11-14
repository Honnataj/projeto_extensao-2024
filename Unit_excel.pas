unit Unit_excel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet;

type
  TForm2 = class(TForm)
    FDTable1: TFDTable;
    FDTable1codigo: TFDAutoIncField;
    FDTable1data_requerimento: TWideMemoField;
    FDTable1quantidade: TIntegerField;
    FDTable1requerente_responsavel_codigo: TIntegerField;
    FDTable1requerente_nao_responsavel: TWideMemoField;
    FDTable1item_codigo: TIntegerField;
    FDTable1local_retirada_codigo: TIntegerField;
    FDTable1setor_codigo: TIntegerField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Exportar: TButton;
    FDQuery1: TFDQuery;
    procedure ExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses Unit1;
{$R *.dfm}

procedure TForm2.ExportarClick(Sender: TObject);
var
  sLista : TStringList;
  cLinha : string;
  i : integer;
begin
  sLista := TStringList.Create;
  cLinha := '';
  with FDQuery1 do
  begin
    for I := 0 to Fields.Count - 1  do
    begin
      if cLinha = '' then
      begin
        cLinha := Fields[i].FieldName;
      end
      else
      begin
        cLinha := cLinha + ';'+Fields[i].FieldName;
      end;

    end;
    sLista.Add(cLinha);
    cLinha := '';
    while not eof do
    begin
      for I := 0 to Fields.Count - 1  do
      begin
        if cLinha = '' then
        begin
          cLinha := FieldByName(Fields[i].FieldName).AsString;
        end
        else
        begin
          cLinha := cLinha + ';'+FieldByName(Fields[i].FieldName).AsString;
        end;

      end;
      sLista.Add(cLinha);
      cLinha := '';
      next;
    end;
  end;
  sLista.SaveToFile('dados.csv');
end;

end.
