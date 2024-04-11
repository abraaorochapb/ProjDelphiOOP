object dmConexao: TdmConexao
  OnCreate = DataModuleCreate
  Height = 567
  Width = 761
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\ProjOOP\db\TODODB.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 184
    Top = 240
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 312
    Top = 232
  end
end
