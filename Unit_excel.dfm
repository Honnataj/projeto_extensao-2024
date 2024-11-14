object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 659
  ClientWidth = 1205
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 248
    Top = 328
    Width = 617
    Height = 307
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Exportar: TButton
    Left = 720
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Exportar'
    TabOrder = 1
    OnClick = ExportarClick
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'codigo'
    Connection = FormularioPrincipal.FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'TB_requerimento'
    Left = 488
    Top = 48
    object FDTable1codigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object FDTable1data_requerimento: TWideMemoField
      FieldName = 'data_requerimento'
      Origin = 'data_requerimento'
      Required = True
      BlobType = ftWideMemo
    end
    object FDTable1quantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
    end
    object FDTable1requerente_responsavel_codigo: TIntegerField
      FieldName = 'requerente_responsavel_codigo'
      Origin = 'requerente_responsavel_codigo'
    end
    object FDTable1requerente_nao_responsavel: TWideMemoField
      FieldName = 'requerente_nao_responsavel'
      Origin = 'requerente_nao_responsavel'
      BlobType = ftWideMemo
    end
    object FDTable1item_codigo: TIntegerField
      FieldName = 'item_codigo'
      Origin = 'item_codigo'
      Required = True
    end
    object FDTable1local_retirada_codigo: TIntegerField
      FieldName = 'local_retirada_codigo'
      Origin = 'local_retirada_codigo'
      Required = True
    end
    object FDTable1setor_codigo: TIntegerField
      FieldName = 'setor_codigo'
      Origin = 'setor_codigo'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 304
    Top = 224
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FormularioPrincipal.FDConnection1
    SQL.Strings = (
      'SELECT '
      
        'TB_req.data_requerimento, TB_req.quantidade,TB_req.requerente_na' +
        'o_responsavel,'
      'TB_res.nome,TB_item.nome,TB_loc.nome,TB_setor.nome'
      'FROM  '
      'TB_requerimento AS TB_req'
      'LEFT JOIN'
      '    TB_responsavel AS TB_res ON TB_req.codigo = TB_res.codigo'
      'LEFT JOIN'
      '    TB_item ON TB_req.codigo = TB_item.codigo'
      'LEFT JOIN '
      '    TB_local_retirada AS TB_loc ON TB_req.codigo = TB_loc.codigo'
      'LEFT JOIN '
      '    TB_setor ON TB_req.codigo = TB_setor.codigo ')
    Left = 504
    Top = 208
  end
end