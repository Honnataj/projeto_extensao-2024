object Form_item: TForm_item
  Left = 0
  Top = 0
  Caption = 'Form_item'
  ClientHeight = 441
  ClientWidth = 624
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object nomeEdit: TLabel
    Left = 214
    Top = 112
    Width = 33
    Height = 15
    Caption = 'Nome'
    FocusControl = DBMemo1
  end
  object Label3: TLabel
    Left = 214
    Top = 160
    Width = 87
    Height = 15
    Caption = 'Local de retirada'
  end
  object ButtonAdicionar: TButton
    Left = 214
    Top = 220
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 0
    OnClick = ButtonAdicionarClick
  end
  object ButtonExcluir: TButton
    Left = 310
    Top = 220
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
    OnClick = ButtonExcluirClick
  end
  object DBGrid1: TDBGrid
    Left = 136
    Top = 281
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBMemo1: TDBMemo
    Left = 214
    Top = 128
    Width = 171
    Height = 25
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 214
    Top = 181
    Width = 171
    Height = 23
    TabOrder = 4
    Text = 'Local de retirada'
  end
  object TFDTable_item: TFDTable
    Active = True
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
      OnGetText = TFDTable_itemnomeGetText
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
end
