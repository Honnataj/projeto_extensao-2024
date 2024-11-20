program Projeto_OsIndependentes;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit_responsavel in 'Unit_responsavel.pas' {Form_responsavel},
  Unit_setor in 'Unit_setor.pas' {Form_setor},
  Unit_item in 'Unit_item.pas' {Form_item},
  Unit_local_retirada in 'Unit_local_retirada.pas' {Form_local_retirada},
  Unit_requerimento in 'Unit_requerimento.pas' {Form_requerimento},
  Unit_consultaRequerimento in 'Unit_consultaRequerimento.pas' {Form_consultaRequerimento},
  Unit_consultaResponsavel in 'Unit_consultaResponsavel.pas' {Form_consultaResponsavel},
  Unit_consultaSetor in 'Unit_consultaSetor.pas' {Form_consultaSetor},
  Unit_consultaItem in 'Unit_consultaItem.pas' {Form_consultaItem},
  Unit_consultaLocalRetirada in 'Unit_consultaLocalRetirada.pas' {Form_consultaLocalRetirada};

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
  Application.CreateForm(TForm_consultaRequerimento, Form_consultaRequerimento);
  Application.CreateForm(TForm_consultaResponsavel, Form_consultaResponsavel);
  Application.CreateForm(TForm_consultaSetor, Form_consultaSetor);
  Application.CreateForm(TForm_consultaItem, Form_consultaItem);
  Application.CreateForm(TForm_consultaLocalRetirada, Form_consultaLocalRetirada);
  Application.Run;
end.
