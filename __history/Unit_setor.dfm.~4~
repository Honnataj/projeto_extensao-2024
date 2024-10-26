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
  TextHeight = 15
  object Label1: TLabel
    Left = 224
    Top = 120
    Width = 37
    Height = 15
    Caption = 'codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 224
    Top = 168
    Width = 31
    Height = 15
    Caption = 'nome'
    FocusControl = DBMemo1
  end
  object Label3: TLabel
    Left = 224
    Top = 280
    Width = 104
    Height = 15
    Caption = 'responsavel_codigo'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 224
    Top = 328
    Width = 112
    Height = 15
    Caption = 'local_retirada_codigo'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 224
    Top = 139
    Width = 154
    Height = 23
    DataField = 'codigo'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBMemo1: TDBMemo
    Left = 224
    Top = 184
    Width = 185
    Height = 89
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 224
    Top = 296
    Width = 154
    Height = 23
    DataField = 'responsavel_codigo'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 224
    Top = 349
    Width = 154
    Height = 23
    DataField = 'local_retirada_codigo'
    DataSource = DataSource1
    TabOrder = 3
  end
  object ButtonAdicionar: TButton
    Left = 214
    Top = 388
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 4
    OnClick = ButtonAdicionarClick
  end
  object ButtonExcluir: TButton
    Left = 303
    Top = 388
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = ButtonExcluirClick
  end
  object DataSource1: TDataSource
    DataSet = TFDTable_setor
    Left = 552
    Top = 16
  end
  object TFDTable_setor: TFDTable
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
    object TFDTable_setorlocal_retirada_codigo: TIntegerField
      FieldName = 'local_retirada_codigo'
      Origin = 'local_retirada_codigo'
      Required = True
    end
  end
end
