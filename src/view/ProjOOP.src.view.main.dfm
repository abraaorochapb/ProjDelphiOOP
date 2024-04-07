object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Tarefas'
  ClientHeight = 724
  ClientWidth = 1010
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
    Width = 1010
    Height = 724
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1006
    ExplicitHeight = 723
    object pnlCabecalho: TPanel
      Left = 1
      Top = 1
      Width = 1008
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Tarefas'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 1004
    end
    object Panel1: TPanel
      Left = 1
      Top = 58
      Width = 1008
      Height = 665
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 1004
      ExplicitHeight = 664
      object pnlBotoes: TPanel
        Left = 0
        Top = 592
        Width = 1008
        Height = 73
        Align = alBottom
        BevelOuter = bvNone
        Color = clMoneyGreen
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        ParentBackground = False
        TabOrder = 0
        ExplicitTop = 591
        ExplicitWidth = 1004
        object btnNovo: TButton
          Left = 21
          Top = 22
          Width = 75
          Height = 31
          Cursor = crHandPoint
          Hint = 'Adicionar nova tarefa'
          Align = alCustom
          Caption = 'Adicionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object btnEditar: TButton
          Left = 128
          Top = 22
          Width = 75
          Height = 31
          Cursor = crHandPoint
          Hint = 'Editar tarefa existente'
          Caption = 'Editar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object btnCancelar: TButton
          Left = 921
          Top = 24
          Width = 75
          Height = 31
          Cursor = crHandPoint
          Caption = 'Cancelar'
          TabOrder = 2
          OnClick = btnCancelarClick
        end
      end
      object pnlPrincipal: TPanel
        Left = 0
        Top = 0
        Width = 1008
        Height = 592
        Align = alClient
        BevelOuter = bvNone
        Color = clBtnHighlight
        ParentBackground = False
        TabOrder = 1
        ExplicitWidth = 1004
        ExplicitHeight = 591
        object pnlPesquisa: TPanel
          Left = 0
          Top = 0
          Width = 1008
          Height = 57
          Align = alTop
          BevelOuter = bvNone
          Color = clInactiveBorder
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 1004
          object edtPesquisa: TEdit
            Left = 21
            Top = 19
            Width = 396
            Height = 23
            TabOrder = 0
            TextHint = 'Digite para pesquisar'
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 57
          Width = 1008
          Height = 535
          Align = alClient
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
    end
  end
end
