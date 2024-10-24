object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 545
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 200
    Top = 128
    Width = 37
    Height = 15
    Caption = 'codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 200
    Top = 176
    Width = 40
    Height = 15
    Caption = 'valorInt'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 200
    Top = 224
    Width = 65
    Height = 15
    Caption = 'valorVarchar'
    FocusControl = DBMemo1
  end
  object DBEdit1: TDBEdit
    Left = 200
    Top = 144
    Width = 154
    Height = 23
    DataField = 'codigo'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 200
    Top = 192
    Width = 154
    Height = 23
    DataField = 'valorInt'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBMemo1: TDBMemo
    Left = 200
    Top = 240
    Width = 185
    Height = 89
    DataField = 'valorVarchar'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 144
    Top = 375
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valorInt'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valorVarchar'
        Visible = True
      end>
  end
  object buttonAdicionar: TButton
    Left = 64
    Top = 512
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 4
    OnClick = buttonAdicionarClick
  end
  object buttonAlterar: TButton
    Left = 190
    Top = 512
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 5
    OnClick = buttonAlterarClick
  end
  object buttonExcluir: TButton
    Left = 320
    Top = 512
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 6
    OnClick = buttonExcluirClick
  end
  object buttonSalvar: TButton
    Left = 445
    Top = 512
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 7
    OnClick = buttonSalvarClick
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 40
    Top = 40
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=.\banco_teste.db'
      'SharedCache=False'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 152
    Top = 40
  end
  object FDLocalSQL1: TFDLocalSQL
    Connection = FDConnection1
    Active = True
    Left = 248
    Top = 40
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM tabelaTeste')
    Left = 336
    Top = 40
  end
  object TFDTable1: TFDTable
    IndexFieldNames = 'codigo'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tabelaTeste'
    Left = 408
    Top = 40
    object TFDTable1codigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object TFDTable1valorInt: TIntegerField
      FieldName = 'valorInt'
      Origin = 'valorInt'
    end
    object TFDTable1valorVarchar: TWideMemoField
      FieldName = 'valorVarchar'
      Origin = 'valorVarchar'
      OnGetText = TFDTable1valorVarcharGetText
      BlobType = ftWideMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = TFDTable1
    Left = 488
    Top = 40
  end
end
