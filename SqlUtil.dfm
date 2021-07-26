object Main: TMain
  Left = 500
  Top = 300
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'SQL'#24037#20855
  ClientHeight = 644
  ClientWidth = 1104
  Color = clBtnFace
  Constraints.MaxHeight = 683
  Constraints.MaxWidth = 1120
  Constraints.MinHeight = 683
  Constraints.MinWidth = 1120
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Consolas'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 19
  object lblDbType: TLabel
    Left = 8
    Top = 8
    Width = 72
    Height = 29
    ParentCustomHint = False
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = #25968#25454#24211#65306
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    Layout = tlCenter
  end
  object lblStation: TLabel
    Left = 399
    Top = 8
    Width = 54
    Height = 28
    ParentCustomHint = False
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = #36710#31449#65306
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    Layout = tlCenter
  end
  object lblVpn: TLabel
    Left = 618
    Top = 8
    Width = 45
    Height = 28
    ParentCustomHint = False
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = 'Vpn'#65306
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    Layout = tlCenter
  end
  object chkAllStation: TCheckBox
    Left = 246
    Top = 8
    Width = 131
    Height = 28
    ParentCustomHint = False
    BiDiMode = bdLeftToRight
    Caption = #26159#21542#20840#36873#36710#31449
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
  end
  object cbbStation: TComboBoxEx
    Left = 451
    Top = 8
    Width = 145
    Height = 28
    ParentCustomHint = False
    AutoCompleteOptions = [acoAutoSuggest, acoAutoAppend]
    ItemsEx = <>
    BiDiMode = bdLeftToRight
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
  end
  object edtVpn: TEdit
    Left = 669
    Top = 9
    Width = 121
    Height = 27
    ParentCustomHint = False
    BiDiMode = bdLeftToRight
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 3
  end
  object cbbDbType: TComboBoxEx
    Left = 86
    Top = 8
    Width = 145
    Height = 28
    AutoCompleteOptions = [acoAutoSuggest, acoAutoAppend]
    ItemsEx = <
      item
        Caption = #21069#32622#26426
      end
      item
        Caption = #31449#21153
      end>
    TabOrder = 0
    Text = #21069#32622#26426
  end
  object btnExecuteSql: TButton
    Left = 8
    Top = 43
    Width = 105
    Height = 25
    Caption = #25191#34892'Sql'
    TabOrder = 4
  end
  object btnCleanSql: TButton
    Left = 128
    Top = 43
    Width = 105
    Height = 25
    Caption = #28165#29702'Sql'
    TabOrder = 5
  end
  object redtSql: TRichEdit
    Left = 8
    Top = 74
    Width = 633
    Height = 199
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object btnCleanResultLog: TButton
    Left = 991
    Top = 43
    Width = 105
    Height = 25
    Caption = #28165#29702#26085#24535
    TabOrder = 7
  end
  object redtResultLog: TRichEdit
    Left = 664
    Top = 74
    Width = 432
    Height = 199
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object btnCleanResult: TButton
    Left = 8
    Top = 288
    Width = 105
    Height = 25
    Caption = #28165#29702#32467#26524
    TabOrder = 9
  end
  object vrtlstrngtrSqlResult: TVirtualStringTree
    Left = 8
    Top = 319
    Width = 1088
    Height = 317
    Header.AutoSizeIndex = -1
    Header.DefaultHeight = 17
    Header.MainColumn = -1
    Header.Options = [hoColumnResize, hoDrag, hoShowSortGlyphs, hoVisible]
    Header.ParentFont = True
    TabOrder = 10
    TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScroll, toAutoScrollOnExpand, toAutoTristateTracking, toAutoDeleteMovedNodes]
    Columns = <>
  end
end
