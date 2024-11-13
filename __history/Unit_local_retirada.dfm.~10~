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
    Width = 31
    Height = 15
    Caption = 'nome'
    FocusControl = DBMemo1
  end
  object DBMemo1: TDBMemo
    Left = 222
    Top = 256
    Width = 185
    Height = 89
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 0
  end
  object ButtonAdicionar: TButton
    Left = 222
    Top = 391
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = ButtonAdicionarClick
  end
  object ButtonExcluir: TButton
    Left = 318
    Top = 391
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 2
    OnClick = ButtonExcluirClick
  end
  object DBGrid1: TDBGrid
    Left = 160
    Top = 440
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Visible = True
      end>
  end
  object TFDTable_local_retirada: TFDTable
    Active = True
    IndexFieldNames = 'codigo'
    Connection = Form1.FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'TB_local_retirada'
    Left = 496
    Top = 88
    object TFDTable_local_retiradacodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object TFDTable_local_retiradanome: TWideMemoField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = TFDTable_local_retirada
    Left = 336
    Top = 56
  end
end
