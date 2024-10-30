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
  TextHeight = 15
  object Label2: TLabel
    Left = 214
    Top = 112
    Width = 31
    Height = 15
    Caption = 'nome'
    FocusControl = DBMemo1
  end
  object Label3: TLabel
    Left = 214
    Top = 224
    Width = 112
    Height = 15
    Caption = 'local_retirada_codigo'
    FocusControl = DBEdit2
  end
  object ButtonAdicionar: TButton
    Left = 214
    Top = 284
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 0
    OnClick = ButtonAdicionarClick
  end
  object ButtonExcluir: TButton
    Left = 310
    Top = 284
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
    OnClick = ButtonExcluirClick
  end
  object DBGrid1: TDBGrid
    Left = 160
    Top = 313
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
    Width = 185
    Height = 89
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 214
    Top = 240
    Width = 154
    Height = 23
    DataField = 'local_retirada_codigo'
    DataSource = DataSource1
    TabOrder = 4
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
