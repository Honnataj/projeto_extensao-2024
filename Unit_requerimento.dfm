object Form_requerimento: TForm_requerimento
  Left = 0
  Top = 0
  Caption = 'Form_requerimento'
  ClientHeight = 893
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object Label3: TLabel
    Left = 297
    Top = 161
    Width = 73
    Height = 15
    Caption = 'QUANTIDADE'
  end
  object Label4: TLabel
    Left = 300
    Top = 248
    Width = 70
    Height = 15
    Caption = 'REQUERENTE'
  end
  object Label6: TLabel
    Left = 344
    Top = 203
    Width = 26
    Height = 15
    Caption = 'ITEM'
  end
  object Label7: TLabel
    Left = 258
    Top = 296
    Width = 110
    Height = 15
    Caption = 'LOCAL DE RETIRADA'
  end
  object Label8: TLabel
    Left = 337
    Top = 344
    Width = 33
    Height = 15
    Caption = 'SETOR'
  end
  object Button1: TButton
    Left = 376
    Top = 391
    Width = 145
    Height = 50
    Caption = 'SALVAR REGISTRO'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 376
    Top = 245
    Width = 145
    Height = 23
    Style = csDropDownList
    TabOrder = 1
    OnChange = ComboBox1Change
  end
  object ComboBox2: TComboBox
    Left = 376
    Top = 200
    Width = 145
    Height = 23
    Style = csDropDownList
    TabOrder = 2
    OnChange = ComboBox2Change
  end
  object ComboBox3: TComboBox
    Left = 376
    Top = 293
    Width = 145
    Height = 23
    Style = csDropDownList
    TabOrder = 3
  end
  object ComboBox4: TComboBox
    Left = 376
    Top = 341
    Width = 145
    Height = 23
    Style = csDropDownList
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 376
    Top = 158
    Width = 33
    Height = 23
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 531
    Top = 245
    Width = 222
    Height = 23
    TabOrder = 6
    Visible = False
  end
  object Button_consulta: TButton
    Left = 678
    Top = 568
    Width = 75
    Height = 25
    Caption = 'Ver registros'
    TabOrder = 7
    OnClick = Button_consultaClick
  end
  object FDQuery1: TFDQuery
    Connection = Form1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM TB_requerimento')
    Left = 864
    Top = 208
  end
end
