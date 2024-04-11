object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Margins.Left = 10
  Caption = 'Login'
  ClientHeight = 782
  ClientWidth = 1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlTela: TPanel
    Left = 0
    Top = 0
    Width = 1094
    Height = 782
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 432
    ExplicitTop = 392
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlBotoes: TPanel
      Left = 0
      Top = 472
      Width = 1094
      Height = 310
      Align = alBottom
      BevelOuter = bvNone
      Color = clMoneyGreen
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 478
      object btnEntrar: TButton
        Left = 416
        Top = 6
        Width = 113
        Height = 36
        Cursor = crHandPoint
        Hint = 'Clique para logar'
        Align = alCustom
        Caption = 'Entrar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnEntrarClick
      end
      object btnCadastrar: TButton
        Left = 600
        Top = 6
        Width = 113
        Height = 36
        Cursor = crHandPoint
        Hint = 'Clique para cadastrar um novo usu'#225'rio'
        Margins.Left = 10
        Align = alCustom
        Cancel = True
        Caption = 'Cadastrar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnCadastrarClick
      end
    end
    object pnlCampos: TPanel
      Left = 0
      Top = 0
      Width = 1094
      Height = 472
      Align = alClient
      BevelOuter = bvNone
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 1
      ExplicitHeight = 425
      object Label1: TLabel
        Left = 416
        Top = 245
        Width = 47
        Height = 21
        Caption = 'EMAIL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 416
        Top = 348
        Width = 53
        Height = 21
        Caption = 'SENHA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtEmail: TEdit
        Left = 416
        Top = 272
        Width = 297
        Height = 23
        TabOrder = 0
      end
      object edtSenha: TEdit
        Left = 416
        Top = 375
        Width = 297
        Height = 23
        TabOrder = 1
      end
    end
  end
end
