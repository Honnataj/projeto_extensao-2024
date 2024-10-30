object Form_requerimento: TForm_requerimento
  Left = 0
  Top = 0
  Caption = 'Form_requerimento'
  ClientHeight = 615
  ClientWidth = 921
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label2: TLabel
    Left = 360
    Top = 64
    Width = 100
    Height = 15
    Caption = 'data_requerimento'
  end
  object Label3: TLabel
    Left = 360
    Top = 120
    Width = 60
    Height = 15
    Caption = 'quantidade'
    FocusControl = DBEdit2
  end
  object Label6: TLabel
    Left = 360
    Top = 184
    Width = 24
    Height = 15
    Caption = 'item'
  end
  object Label7: TLabel
    Left = 360
    Top = 232
    Width = 88
    Height = 15
    Caption = 'local de retirada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Label7'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 360
    Top = 280
    Width = 26
    Height = 15
    Caption = 'setor'
  end
  object DBEdit2: TDBEdit
    Left = 360
    Top = 141
    Width = 145
    Height = 20
    DataField = 'quantidade'
    DataSource = DataSource1
    TabOrder = 0
  end
  object ButtonAdicionar: TButton
    Left = 344
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = ButtonAdicionarClick
  end
  object ButtonExcluir: TButton
    Left = 443
    Top = 340
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 2
    OnClick = ButtonExcluirClick
  end
  object DateTimePicker1: TDateTimePicker
    Left = 360
    Top = 85
    Width = 145
    Height = 29
    Date = 45595.000000000000000000
    Time = 0.595466342594591000
    TabOrder = 3
  end
  object ComboBox_item: TComboBox
    Left = 360
    Top = 205
    Width = 145
    Height = 23
    TabOrder = 4
    Text = 'Detergente'
  end
  object ComboBox2: TComboBox
    Left = 360
    Top = 253
    Width = 145
    Height = 23
    TabOrder = 5
    Text = 'Produtos de limpeza'
  end
  object ComboBox3: TComboBox
    Left = 360
    Top = 301
    Width = 145
    Height = 23
    TabOrder = 6
    Items.Strings = (
      'Camarote Brahma'
      'Camarote da Gente'
      'Camarote Super Bull'
      'Parque do Pe'#227'ozinho'
      'Setor Administrativo'
      'Setor Financeiro')
  end
  object TFDTable_requerimento: TFDTable
    Active = True
    IndexFieldNames = 'codigo'
    Connection = Form1.FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'TB_requerimento'
    Left = 832
    Top = 280
    object TFDTable_requerimentocodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object TFDTable_requerimentodata_requerimento: TWideMemoField
      FieldName = 'data_requerimento'
      Origin = 'data_requerimento'
      Required = True
      OnGetText = TFDTable_requerimentodata_requerimentoGetText
      BlobType = ftWideMemo
    end
    object TFDTable_requerimentoquantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
    end
    object TFDTable_requerimentorequerente_responsavel_codigo: TIntegerField
      FieldName = 'requerente_responsavel_codigo'
      Origin = 'requerente_responsavel_codigo'
    end
    object TFDTable_requerimentorequerente_nao_responsavel: TWideMemoField
      FieldName = 'requerente_nao_responsavel'
      Origin = 'requerente_nao_responsavel'
      BlobType = ftWideMemo
    end
    object TFDTable_requerimentoitem_codigo: TIntegerField
      FieldName = 'item_codigo'
      Origin = 'item_codigo'
      Required = True
    end
    object TFDTable_requerimentolocal_retirada_codigo: TIntegerField
      FieldName = 'local_retirada_codigo'
      Origin = 'local_retirada_codigo'
      Required = True
    end
    object TFDTable_requerimentosetor_codigo: TIntegerField
      FieldName = 'setor_codigo'
      Origin = 'setor_codigo'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = TFDTable_requerimento
    Left = 832
    Top = 224
  end
end
