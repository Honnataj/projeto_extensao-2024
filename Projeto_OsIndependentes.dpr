program Projeto_OsIndependentes;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit_responsavel in 'Unit_responsavel.pas' {Form_responsavel},
  Unit_setor in 'Unit_setor.pas' {Form_setor},
  Unit_item in 'Unit_item.pas' {Form_item},
  Unit_local_retirada in 'Unit_local_retirada.pas' {Form_local_retirada},
  Unit_requerimento in 'Unit_requerimento.pas' {Form_requerimento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm_responsavel, Form_responsavel);
  Application.CreateForm(TForm_setor, Form_setor);
  Application.CreateForm(TForm_item, Form_item);
  Application.CreateForm(TForm_local_retirada, Form_local_retirada);
  Application.CreateForm(TForm_requerimento, Form_requerimento);
  Application.Run;
end.
