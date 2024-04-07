object frmCadastroTarefa: TfrmCadastroTarefa
  Left = 0
  Top = 0
  Caption = 'Cadastrar Tarefa'
  ClientHeight = 724
  ClientWidth = 1099
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
    Width = 1099
    Height = 724
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 1017
    ExplicitHeight = 709
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
      ExplicitTop = 640
      ExplicitWidth = 1021
      object btnNovo: TButton
        Left = 6
        Top = 6
        Width = 75
        Height = 58
        Cursor = crHandPoint
        Hint = 'Salvar tarefa'
        Caption = 'Salvar'
        TabOrder = 0
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
      Color = clBtnHighlight
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 1021
      ExplicitHeight = 640
      object Label1: TLabel
        Left = 336
        Top = 128
        Width = 41
        Height = 15
        Caption = 'TITULO:'
      end
      object Label2: TLabel
        Left = 336
        Top = 219
        Width = 66
        Height = 15
        Caption = 'DESCRI'#199#195'O:'
      end
      object edtTitulo: TEdit
        Left = 336
        Top = 149
        Width = 353
        Height = 23
        TabOrder = 0
      end
      object memoDescricao: TMemo
        Left = 336
        Top = 240
        Width = 353
        Height = 193
        TabOrder = 1
      end
    end
  end
end
