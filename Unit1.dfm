object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 545
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object buttonAdicionar: TButton
    Left = 64
    Top = 512
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 0
    OnClick = buttonAdicionarClick
  end
  object buttonAlterar: TButton
    Left = 190
    Top = 512
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 1
    OnClick = buttonAlterarClick
  end
  object buttonExcluir: TButton
    Left = 320
    Top = 512
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 2
    OnClick = buttonExcluirClick
  end
  object buttonSalvar: TButton
    Left = 445
    Top = 512
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = buttonSalvarClick
  end
  object Button_responsavel: TButton
    Left = 200
    Top = 175
    Width = 195
    Height = 25
    Caption = 'Cadastro de respons'#225'vel por setor'
    TabOrder = 4
    OnClick = Button_responsavelClick
  end
  object Button_setor: TButton
    Left = 200
    Top = 206
    Width = 195
    Height = 25
    Caption = 'Cadastro de setor'
    TabOrder = 5
    OnClick = Button_setorClick
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 40
    Top = 40
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\projeto_extensao-2024\banco_independentes.db'
      'SharedCache=False'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 152
    Top = 40
  end
  object FDLocalSQL1: TFDLocalSQL
    Connection = FDConnection1
    Active = True
    Left = 248
    Top = 40
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM TB_responsavel')
    Left = 336
    Top = 40
  end
  object DataSource1: TDataSource
    Left = 488
    Top = 40
  end
end
