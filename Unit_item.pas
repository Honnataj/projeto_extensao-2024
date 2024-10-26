unit Unit_item;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Mask, Vcl.ExtCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm_item = class(TForm)
    TFDTable_item: TFDTable;
    TFDTable_itemcodigo: TFDAutoIncField;
    TFDTable_itemnome: TWideMemoField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBMemo1: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_item: TForm_item;

implementation

{$R *.dfm}

end.
