object ControleLicenca: TControleLicenca
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'API Licen'#231'a'
  ClientHeight = 93
  ClientWidth = 248
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbStatus: TLabel
    Left = 8
    Top = 7
    Width = 70
    Height = 13
    Caption = 'Status: Offline'
  end
  object lbPorta: TLabel
    Left = 8
    Top = 26
    Width = 24
    Height = 13
    Caption = 'Port:'
  end
  object btnStop: TBitBtn
    Left = 127
    Top = 53
    Width = 113
    Height = 25
    Caption = 'Stop'
    Enabled = False
    TabOrder = 0
    OnClick = btnStopClick
  end
  object btnStart: TBitBtn
    Left = 8
    Top = 53
    Width = 113
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = btnStartClick
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=alysson'
      'User_Name=root'
      'Password=masterkey'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Left = 120
    Top = 8
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'E:\Projetos\API_Licenca\libmysql.dll'
    Left = 160
    Top = 16
  end
  object Q_Licenca: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'Select cc.Situacao'
      '  from Controle_Cliente cc'
      ' where cc.Codigo_Cliente = :Codigo_Cliente')
    Left = 56
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
  end
end
