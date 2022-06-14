object Form3: TForm3
  Left = 420
  Top = 133
  Width = 237
  Height = 193
  BorderIcons = []
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 46
    Width = 38
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object Label2: TLabel
    Left = 7
    Top = 16
    Width = 53
    Height = 13
    Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
  end
  object Edit1: TEdit
    Left = 78
    Top = 46
    Width = 124
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object Button1: TButton
    Left = 13
    Top = 86
    Width = 85
    Height = 37
    Caption = 'ok'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 86
    Width = 98
    Height = 37
    Caption = #1086#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 78
    Top = 13
    Width = 124
    Height = 21
    KeyField = #1050#1086#1076
    ListField = #1060#1048#1054
    ListSource = Form1.DataSource21
    TabOrder = 3
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'hesh'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'n'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'UPDATE '#1057#1086#1090#1088#1091#1076#1085#1080#1082' SET '#1057#1086#1090#1088#1091#1076#1085#1080#1082'.HESH =:hesh'
      'WHERE ((('#1057#1086#1090#1088#1091#1076#1085#1080#1082'.'#1050#1086#1076')=:n));')
    Left = 232
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 592
    Top = 136
  end
  object ADOTable1: TADOTable
    CursorType = ctStatic
    TableName = #1057#1086#1090#1088#1091#1076#1085#1080#1082
    Left = 592
    Top = 184
    object ADOTable1DSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOTable1DSDesigner2: TWideStringField
      FieldName = #1058#1080#1087' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      Size = 255
    end
    object ADOTable1DSDesigner3: TWideStringField
      FieldName = #1060#1048#1054
      Size = 255
    end
    object ADOTable1DSDesigner4: TWideStringField
      FieldName = #1087#1072#1089#1087#1086#1088#1090
      Size = 255
    end
    object ADOTable1DSDesigner5: TWideStringField
      FieldName = #1090#1077#1083#1077#1092#1086#1085
      Size = 255
    end
    object ADOTable1DSDesigner6: TDateTimeField
      FieldName = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
    end
    object ADOTable1HESH: TWideStringField
      FieldName = 'HESH'
      Size = 255
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 592
    Top = 136
  end
  object ADOTable2: TADOTable
    CursorType = ctStatic
    TableName = #1057#1086#1090#1088#1091#1076#1085#1080#1082
    Left = 592
    Top = 184
    object AutoIncField1: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      FieldName = #1058#1080#1087' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      Size = 255
    end
    object WideStringField2: TWideStringField
      FieldName = #1060#1048#1054
      Size = 255
    end
    object WideStringField3: TWideStringField
      FieldName = #1087#1072#1089#1087#1086#1088#1090
      Size = 255
    end
    object WideStringField4: TWideStringField
      FieldName = #1090#1077#1083#1077#1092#1086#1085
      Size = 255
    end
    object DateTimeField1: TDateTimeField
      FieldName = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
    end
    object WideStringField5: TWideStringField
      FieldName = 'HESH'
      Size = 255
    end
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'n'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT '#1057#1086#1090#1088#1091#1076#1085#1080#1082'.'#1050#1086#1076', '#1057#1086#1090#1088#1091#1076#1085#1080#1082'.['#1058#1080#1087' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072'] FROM '#1057#1086#1090#1088#1091#1076#1085#1080#1082' ' +
        'WHERE (('#1057#1086#1090#1088#1091#1076#1085#1080#1082'.HESH)=:n);')
    Left = 232
    Top = 56
  end
end
