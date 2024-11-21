object Form_consultaSetor: TForm_consultaSetor
  Left = 0
  Top = 0
  Caption = 'Form_consultaSetor'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 136
    Top = 200
    Width = 320
    Height = 120
    DataSource = DataSource1
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
        FieldName = 'Setor'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Respons'#225'vel'
        Width = 160
        Visible = True
      end>
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = Form1.FDConnection1
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideMemo
        TargetDataType = dtWideString
      end>
    SQL.Strings = (
      'SELECT'
      '   setor.nome AS Setor,'
      '   rs.nome AS Respons'#225'vel'
      'FROM'
      '   TB_setor AS setor'
      
        '   inner join TB_responsavel AS rs ON setor.responsavel_codigo =' +
        ' rs.codigo')
    Left = 240
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 480
    Top = 96
  end
end
