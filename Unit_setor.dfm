object Form_setor: TForm_setor
  Left = 0
  Top = 0
  Caption = 'Form_setor'
  ClientHeight = 556
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object Label2: TLabel
    Left = 222
    Top = 208
    Width = 35
    Height = 15
    Caption = 'NOME'
  end
  object Label3: TLabel
    Left = 114
    Top = 248
    Width = 143
    Height = 15
    Caption = 'RESPONS'#193'VEL PELO SETOR'
  end
  object Button1: TButton
    Left = 263
    Top = 288
    Width = 145
    Height = 49
    Caption = 'SALVAR REGISTRO'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 263
    Top = 245
    Width = 145
    Height = 23
    Style = csDropDownList
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 263
    Top = 205
    Width = 145
    Height = 23
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = TFDTable_setor
    Left = 552
    Top = 16
  end
  object TFDTable_setor: TFDTable
    Active = True
    IndexFieldNames = 'codigo'
    Connection = Form1.FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'TB_setor'
    Left = 536
    Top = 80
    object TFDTable_setorcodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object TFDTable_setornome: TWideMemoField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      BlobType = ftWideMemo
    end
    object TFDTable_setorresponsavel_codigo: TIntegerField
      FieldName = 'responsavel_codigo'
      Origin = 'responsavel_codigo'
      Required = True
    end
  end
  object FDQuery1: TFDQuery
    Connection = Form1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM TB_setor')
    Left = 536
    Top = 160
  end
end
