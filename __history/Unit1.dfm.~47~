object FormularioPrincipal: TFormularioPrincipal
  Left = 0
  Top = 0
  Caption = 'FormularioPrincipal'
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
  object Button_responsavel: TButton
    Left = 24
    Top = 207
    Width = 195
    Height = 25
    Caption = 'Cadastro de respons'#225'vel por setor'
    TabOrder = 0
    OnClick = Button_responsavelClick
  end
  object Button_setor: TButton
    Left = 24
    Top = 238
    Width = 195
    Height = 25
    Caption = 'Cadastro de setor'
    TabOrder = 1
    OnClick = Button_setorClick
  end
  object Button_item: TButton
    Left = 24
    Top = 269
    Width = 195
    Height = 25
    Caption = 'Cadastro de item'
    TabOrder = 2
    OnClick = Button_itemClick
  end
  object Button_local_retirada: TButton
    Left = 24
    Top = 300
    Width = 195
    Height = 25
    Caption = 'Cadastro de local de retirada'
    TabOrder = 3
    OnClick = Button_local_retiradaClick
  end
  object Button_requerimento: TButton
    Left = 320
    Top = 207
    Width = 281
    Height = 118
    Caption = 'Cadastro de requerimento'
    TabOrder = 4
    OnClick = Button_requerimentoClick
  end
  object Button_ExportExcel: TButton
    Left = 24
    Top = 344
    Width = 195
    Height = 25
    Caption = 'exportar Excel'
    TabOrder = 5
    OnClick = Button_ExportExcelClick
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 48
    Top = 48
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\jhonn\Documents\Embarcadero\Studio\projeto_ext' +
        'ensao-2024\banco_independentes.db'
      'SharedCache=False'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 168
    Top = 56
  end
  object FDLocalSQL1: TFDLocalSQL
    Connection = FDConnection1
    Active = True
    Left = 248
    Top = 40
  end
end
