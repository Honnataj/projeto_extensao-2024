object Form_consultaRequerimento: TForm_consultaRequerimento
  Left = 0
  Top = 0
  Caption = 'Form_consultaRequerimento'
  ClientHeight = 611
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 24
    Top = 208
    Width = 616
    Height = 120
    Color = clCornsilk
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Data'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Item'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Requerente'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Setor'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Requerente n'#227'o oficial'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Local de retirada'
        Width = 100
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 360
    Top = 80
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = Form1.FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache, evUnidirectional]
    FormatOptions.AssignedValues = [fvMapRules, fvSE2Null, fvStrsTrim, fvMaxStringSize, fvInlineDataSize, fvDefaultParamDataType, fvStrsTrim2Len, fvADOCompatibility]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideMemo
        TargetDataType = dtAnsiString
      end>
    FormatOptions.StrsTrim = False
    FormatOptions.StrsTrim2Len = True
    ResourceOptions.AssignedValues = [rvPersistent]
    SQL.Strings = (
      'SELECT'
      '   r.data_requerimento AS Data,'
      '   r.quantidade AS Quantidade,'
      '   item.nome AS Item,'
      '   res.nome AS Requerente,'
      '   setor.nome AS '#39'Setor'#39','
      '   r.requerente_nao_responsavel AS '#39'Requerente n'#227'o oficial'#39','
      '   lr.nome AS '#39'Local de retirada'#39
      'FROM'
      '   TB_requerimento AS r'
      
        '   left join TB_responsavel AS res ON res.codigo = r.requerente_' +
        'responsavel_codigo'
      '   inner join TB_item AS item on item.codigo = r.item_codigo'
      
        '   inner join TB_local_retirada AS lr ON lr.codigo = r.local_ret' +
        'irada_codigo'
      '   inner join TB_setor AS setor on setor.codigo = r.setor_codigo')
    Left = 264
    Top = 80
  end
end