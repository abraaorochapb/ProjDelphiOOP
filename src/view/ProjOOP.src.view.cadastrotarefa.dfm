object frmCadastroTarefa: TfrmCadastroTarefa
  Left = 0
  Top = 0
  Caption = 'Cadastrar Tarefa'
  ClientHeight = 723
  ClientWidth = 1095
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object pnlTela: TPanel
    Left = 0
    Top = 0
    Width = 1095
    Height = 723
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 1095
    ExplicitHeight = 723
    object pnlBotoes: TPanel
      Left = 0
      Top = 654
      Width = 1099
      Height = 70
      Align = alBottom
      Color = clMoneyGreen
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 653
      ExplicitWidth = 1095
      object btnNovo: TButton
        Left = 6
        Top = 6
        Width = 75
        Height = 58
        Cursor = crHandPoint
        Hint = 'Salvar tarefa'
        Caption = 'Salvar'
        TabOrder = 0
        OnClick = btnNovoClick
      end
      object btnCancelar: TButton
        Left = 118
        Top = 6
        Width = 75
        Height = 58
        Cursor = crHandPoint
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = btnCancelarClick
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1099
      Height = 654
      Align = alClient
      BevelOuter = bvNone
      Color = clInactiveBorder
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 1095
      ExplicitHeight = 653
      object Label1: TLabel
        Left = 352
        Top = 128
        Width = 41
        Height = 15
        Caption = 'TITULO:'
      end
      object Label2: TLabel
        Left = 352
        Top = 219
        Width = 66
        Height = 15
        Caption = 'DESCRI'#199#195'O:'
      end
      object edtTitulo: TEdit
        Left = 352
        Top = 149
        Width = 353
        Height = 23
        TabOrder = 0
      end
      object memoDescricao: TMemo
        Left = 352
        Top = 240
        Width = 353
        Height = 193
        TabOrder = 1
      end
    end
  end
end
