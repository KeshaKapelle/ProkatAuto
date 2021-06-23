object Module: TModule
  OldCreateOrder = False
  Left = 389
  Top = 103
  Height = 338
  Width = 462
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\'#1052#1086#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099' De' +
      'lphi 7\'#1043#1086#1090#1086#1074#1099#1077'\'#1055#1088#1086#1082#1072#1090' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1077#1081'\'#1053#1072#1087#1088#1086#1082#1072#1090'.mdb;Persist Security ' +
      'Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 64
  end
  object Tavto: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM '#1040#1074#1090#1086#1084#1086#1073#1080#1083#1080';')
    Left = 96
    Top = 8
    object TavtoDSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object TavtoDSDesigner2: TWideStringField
      FieldName = #1052#1072#1088#1082#1072
      Size = 255
    end
    object TavtoDSDesigner3: TWideStringField
      FieldName = #1052#1086#1076#1077#1083#1100
      Size = 255
    end
    object TavtoDSDesigner4: TDateTimeField
      FieldName = #1043#1086#1076#1074#1099#1087#1091#1089#1082#1072
    end
    object TavtoDSDesigner5: TIntegerField
      FieldName = #1062#1077#1085#1072
    end
    object TavtoDSDesigner6: TIntegerField
      FieldName = #1054#1073#1098#1105#1084#1076#1074#1080#1075#1072#1090#1077#1083#1103
    end
  end
  object Tarenda: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM '#1040#1088#1077#1085#1076#1072';')
    Left = 96
    Top = 56
    object TarendaDSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object TarendaDSDesigner2: TDateTimeField
      FieldName = #1044#1072#1090#1072
    end
    object TarendaDSDesigner3: TIntegerField
      FieldName = #1050#1083#1080#1077#1085#1090
    end
    object TarendaDSDesigner4: TIntegerField
      FieldName = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1100
    end
    object TarendaDSDesigner5: TIntegerField
      FieldName = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086#1089#1091#1090#1086#1082
    end
    object TarendaDSDesigner6: TIntegerField
      FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100
    end
  end
  object Tclient: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM '#1050#1083#1080#1077#1085#1090#1099';')
    Left = 96
    Top = 104
    object TclientDSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object TclientDSDesigner2: TWideStringField
      FieldName = #1060#1048#1054
      Size = 255
    end
    object TclientDSDesigner3: TIntegerField
      FieldName = #1058#1077#1083#1077#1092#1086#1085
    end
  end
  object Davto: TDataSource
    DataSet = Tavto
    Left = 144
    Top = 8
  end
  object Darenda: TDataSource
    DataSet = Tarenda
    Left = 144
    Top = 56
  end
  object Dclient: TDataSource
    DataSet = Tclient
    Left = 144
    Top = 104
  end
end
