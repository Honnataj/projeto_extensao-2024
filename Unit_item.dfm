object Form_item: TForm_item
  Left = 0
  Top = 0
  Caption = 'Form_item'
  ClientHeight = 441
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
    Left = 205
    Top = 155
    Width = 35
    Height = 15
    Caption = 'NOME'
  end
  object Label3: TLabel
    Left = 130
    Top = 192
    Width = 110
    Height = 15
    Caption = 'LOCAL DE RETIRADA'
  end
  object Button1: TButton
    Left = 246
    Top = 232
    Width = 145
    Height = 41
    Caption = 'SALVAR REGISTRO'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 246
    Top = 189
    Width = 145
    Height = 23
    Style = csDropDownList
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 246
    Top = 152
    Width = 145
    Height = 23
    TabOrder = 2
  end
  object TFDTable_item: TFDTable
    IndexFieldNames = 'codigo'
    Connection = Form1.FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'TB_item'
    Left = 480
    Top = 16
    object TFDTable_itemcodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object TFDTable_itemnome: TWideMemoField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      BlobType = ftWideMemo
    end
    object TFDTable_itemlocal_retirada_codigo: TIntegerField
      FieldName = 'local_retirada_codigo'
      Origin = 'local_retirada_codigo'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = TFDTable_item
    Left = 568
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = Form1.FDConnection1
    Left = 520
    Top = 128
  end
end
