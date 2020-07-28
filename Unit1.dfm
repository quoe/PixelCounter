object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1055#1086#1076#1089#1095#1105#1090' '#1087#1080#1082#1089#1077#1083#1077#1081
  ClientHeight = 409
  ClientWidth = 520
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 520
    Height = 377
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 536
    ExplicitHeight = 312
    object TabSheet1: TTabSheet
      Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1082#1072
      ExplicitWidth = 528
      ExplicitHeight = 284
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 246
        Height = 270
        Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
        TabOrder = 0
        object ListBox1: TListBox
          Left = 2
          Top = 15
          Width = 242
          Height = 228
          Align = alClient
          ItemHeight = 13
          TabOrder = 0
        end
        object Button1: TButton
          Left = 2
          Top = 243
          Width = 242
          Height = 25
          Align = alBottom
          Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 264
        Top = 3
        Width = 233
        Height = 243
        Caption = #1063#1090#1086' '#1089#1095#1080#1090#1072#1090#1100
        TabOrder = 1
        object RadioGroup1: TRadioGroup
          Left = 24
          Top = 28
          Width = 185
          Height = 105
          Caption = #1057#1082#1086#1083#1100#1082#1086' '#1094#1074#1077#1090#1086#1074
          ItemIndex = 0
          Items.Strings = (
            #1054#1076#1080#1085' '#1094#1074#1077#1090' ('#1087#1077#1088#1074#1099#1081')'
            #1044#1074#1072' '#1094#1074#1077#1090#1072)
          TabOrder = 0
        end
        object Panel1: TPanel
          Left = 16
          Top = 147
          Width = 206
          Height = 78
          TabOrder = 1
          object Label1: TLabel
            Left = 12
            Top = 11
            Width = 43
            Height = 13
            Caption = #1055#1077#1088#1074#1099#1081':'
          end
          object Label2: TLabel
            Left = 15
            Top = 43
            Width = 40
            Height = 13
            Caption = #1042#1090#1086#1088#1086#1081':'
          end
          object ColorBox1: TColorBox
            Left = 61
            Top = 10
            Width = 132
            Height = 22
            TabOrder = 0
          end
          object ColorBox2: TColorBox
            Left = 61
            Top = 38
            Width = 132
            Height = 22
            Selected = clWhite
            TabOrder = 1
          end
        end
      end
      object CheckBox1: TCheckBox
        Left = 264
        Top = 252
        Width = 161
        Height = 17
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1087#1086' '#1086#1082#1086#1085#1095#1072#1085#1080#1102
        TabOrder = 2
      end
      object LabeledEdit1: TLabeledEdit
        Left = 255
        Top = 312
        Width = 106
        Height = 21
        EditLabel.Width = 253
        EditLabel.Height = 13
        EditLabel.Caption = #1055#1088#1080#1085#1080#1084#1072#1090#1100' '#1079#1072' '#1094#1074#1077#1090' (65793=RGB(1, 1, 1) - '#1095#1105#1088#1085#1099#1081')'
        TabOrder = 3
        Text = '65793'
      end
      object CheckBox2: TCheckBox
        Left = 264
        Top = 275
        Width = 81
        Height = 17
        Caption = #1042#1077#1089#1090#1080' '#1083#1086#1075
        TabOrder = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1054#1073#1088#1072#1073#1086#1090#1082#1072
      ImageIndex = 1
      ExplicitWidth = 528
      ExplicitHeight = 284
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 512
        Height = 324
        Align = alClient
        ExplicitLeft = 136
        ExplicitTop = 136
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object Button2: TButton
        Left = 0
        Top = 324
        Width = 512
        Height = 25
        Align = alBottom
        Caption = #1054#1073#1088#1072#1073#1086#1090#1072#1090#1100
        TabOrder = 0
        OnClick = Button2Click
        ExplicitTop = 259
        ExplicitWidth = 528
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
      ImageIndex = 2
      ExplicitWidth = 528
      ExplicitHeight = 284
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 512
        Height = 299
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 528
        ExplicitHeight = 234
      end
      object Button3: TButton
        Left = 0
        Top = 299
        Width = 512
        Height = 25
        Align = alBottom
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 1
        OnClick = Button3Click
        ExplicitTop = 234
        ExplicitWidth = 528
      end
      object Button5: TButton
        Left = 0
        Top = 324
        Width = 512
        Height = 25
        Align = alBottom
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1087#1072#1087#1082#1091
        TabOrder = 2
        OnClick = Button5Click
        ExplicitTop = 259
        ExplicitWidth = 528
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1043#1088#1072#1092#1080#1082
      ImageIndex = 3
      ExplicitWidth = 528
      ExplicitHeight = 284
      object Chart1: TChart
        Left = 0
        Top = 0
        Width = 512
        Height = 349
        Title.Text.Strings = (
          #1055#1088#1086#1094#1077#1085#1090' '#1079#1072#1076#1072#1085#1085#1086#1075#1086' '#1094#1074#1077#1090#1072)
        View3D = False
        View3DOptions.Orthogonal = False
        View3DWalls = False
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 528
        ExplicitHeight = 284
        ColorPaletteIndex = 15
        object Button4: TButton
          Left = 1
          Top = 323
          Width = 510
          Height = 25
          Align = alBottom
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 0
          OnClick = Button4Click
          ExplicitTop = 258
          ExplicitWidth = 526
        end
        object Series1: TPointSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Shadow.Color = 8487297
          Marks.Visible = False
          ClickableLine = False
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
          Data = {
            0019000000000000000018854000000000002087400000000000608340000000
            00002C85400000000000D0864000000000001885400000000000748840000000
            000020874000000000005C874000000000008086400000000000908540000000
            0000F4854000000000007C8540000000000030864000000000004C8840000000
            000090854000000000000C874000000000002884400000000000E08040000000
            0000EC8340000000000034824000000000002483400000000000588640000000
            0000FC82400000000000E88240}
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1051#1086#1075
      ImageIndex = 4
      ExplicitWidth = 528
      ExplicitHeight = 284
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 512
        Height = 324
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 528
        ExplicitHeight = 234
      end
      object Button6: TButton
        Left = 0
        Top = 324
        Width = 512
        Height = 25
        Align = alBottom
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        TabOrder = 1
        OnClick = Button6Click
        ExplicitLeft = 224
        ExplicitTop = 264
        ExplicitWidth = 75
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 377
    Width = 520
    Height = 16
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 312
    ExplicitWidth = 536
  end
  object ProgressBar2: TProgressBar
    Left = 0
    Top = 393
    Width = 520
    Height = 16
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 328
    ExplicitWidth = 536
  end
end
