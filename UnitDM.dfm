object DM: TDM
  OldCreateOrder = False
  Height = 415
  Width = 438
  object FDCSqlite: TFDConnection
    Params.Strings = (
      'OpenMode=ReadWrite'
      'DriverID=SQLite')
    LoginPrompt = False
    BeforeConnect = FDCSqliteBeforeConnect
    Left = 64
    Top = 56
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 312
    Top = 304
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 312
    Top = 232
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 152
    Top = 304
  end
  object UniConn: TUniConnection
    ProviderName = 'SQL Server'
    SpecificOptions.Strings = (
      'SQL Server.Provider=prDirect')
    LoginPrompt = False
    Left = 168
    Top = 56
  end
end
