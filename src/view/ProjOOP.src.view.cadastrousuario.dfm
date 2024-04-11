object frmCadastroUsuario: TfrmCadastroUsuario
  Left = 0
  Top = 0
  Caption = 'Cadastrar Usu'#225'rio'
  ClientHeight = 710
  ClientWidth = 1021
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object pnlTela: TPanel
    Left = 0
    Top = 0
    Width = 1021
    Height = 710
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 1017
    ExplicitHeight = 709
    object pnlBotoes: TPanel
      Left = 0
      Top = 640
      Width = 1021
      Height = 70
      Align = alBottom
      Color = clMoneyGreen
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 639
      ExplicitWidth = 1017
      object btnNovo: TButton
        Left = 6
        Top = 6
        Width = 75
        Height = 58
        Align = alLeft
        Caption = 'Salvar'
        TabOrder = 0
        OnClick = btnNovoClick
      end
      object Cancelar: TButton
        Left = 105
        Top = 6
        Width = 75
        Height = 58
        Margins.Left = 5
        Align = alCustom
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = CancelarClick
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 64
      Width = 1021
      Height = 576
      Align = alClient
      BevelOuter = bvNone
      Color = clInactiveBorder
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 0
      ExplicitWidth = 1017
      ExplicitHeight = 639
      object Label1: TLabel
        Left = 336
        Top = 128
        Width = 38
        Height = 15
        Caption = 'NOME:'
      end
      object Label2: TLabel
        Left = 336
        Top = 219
        Width = 37
        Height = 15
        Caption = 'EMAIL:'
      end
      object Label3: TLabel
        Left = 336
        Top = 312
        Width = 41
        Height = 15
        Caption = 'SENHA:'
      end
      object edtNome: TEdit
        Left = 336
        Top = 149
        Width = 353
        Height = 23
        TabOrder = 0
      end
      object edtEmail: TEdit
        Left = 336
        Top = 240
        Width = 353
        Height = 23
        TabOrder = 1
      end
      object edtSenha: TEdit
        Left = 336
        Top = 333
        Width = 353
        Height = 23
        TabOrder = 2
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1021
      Height = 64
      Align = alTop
      Color = clMoneyGreen
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 2
    end
  end
end
