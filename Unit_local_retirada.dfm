object Form_local_retirada: TForm_local_retirada
  Left = 0
  Top = 0
  Caption = 'Form_local_retirada'
  ClientHeight = 586
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label2: TLabel
    Left = 222
    Top = 240
    Width = 35
    Height = 15
    Caption = 'NOME'
  end
  object Button1: TButton
    Left = 263
    Top = 280
    Width = 121
    Height = 41
    Caption = 'SALVAR REGISTRO'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 263
    Top = 237
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object FDQuery1: TFDQuery
    Connection = Form1.FDConnection1
    Left = 480
    Top = 280
  end
end
