   M S B A M L   `   `   `  ????D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QuanLyNhaSachQuanLyNhaSach  5   	   O,clr-namespace:QuanLyNhaSach.UserControlKteamQuanLyNhaSach.UserControlKteam  5	   
       QuanLyNhaSach.RuleWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:QuanLyNhaSach     5   	   ;uc,clr-namespace:QuanLyNhaSach.UserControlKteam     5	   
   U QMaterialDesignThemes.Wpf, Version=2.3.1.953, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5          ?Name$  window??5   	      MaterialDesignBody#???   5   	   $??Regular"?5      $??13(?5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=?5         TextRenderingMode$
 Auto=?5        MaterialDesignPaper#???  5        MaterialDesignFont#???  5       ? 
ResizeMode$ NoResize=?5   	    ? WindowStyle$
 None=?5   	    ? WindowStartupLocation$ CenterScreen=?5   	    ? Title$ Sách??5   	   $	??500??6   $	??700??6#   .??5      ?  ? RowDefinitions 5   
   ?? 5      $
??auto ?6   6,   ?? 5      6   .+?5   
   ? $??0??6   .+?5      1   +QuanLyNhaSach.UserControlKteam.ControlBarUC  
 ? Tag 6   ?? *Title+	 ?? ElementName$	 window??6J   5       ? 5"   
   $??1??6   $??0,0.2,0,120q?6    5#      ?? 5$      $
??auto ?6    60   ?? 5%      $
??auto ?6    60   ?? 5&      6"   ?? 5'      6"   .+?5+      #  MaterialDesignThemes.Wpf.Card  $??0??6"   $??5q?6/   .??5,      ? $??0 0 0 10q?6   .+?5-      ??  # MaterialDesignDisplay1TextBlock#??[ 6    Quy định5/      50      51        53      $??1??6"   $??5q?6/   .??54      ?? .+?56      ?? -   5        $??slnhaptoithieu??56   =   $
??auto??6   $??5 5 5 5 q?6+   )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$(
 "Số lượng nhập tối thiểu??57       % !MaterialDesignFloatingHintTextBox#??[ 58      ?? 59      -   5        $??sltontoithieu??59   =   $
??auto??6   $??5 5 5 5 q?6+   $6
 0Lượng tồn tối thiếu trước khi nhập??5:      #??[ 5;      ?? 5<      -   5        $??notoida??5<   =   $
??auto??6   $??5 5 5 5 q?6+   $
 Tiền nợ tối đa??5=      #??[ 5>      ?? 5?      -   5        $??tonsaukhiban??5@   \   $
??auto??5?      $??5 5 5 5 q?6+   $/
 )Lượng tồn tối thiểu sau khi bán??5@      #??[ 5A      ?? 5B      -   5        $??	sotienthu??5C   !   $??5 20 5 5q?5D   !   .??63   86Số tiền thu k vượt quá số tiền khách nợ5F      ?? 5G      -   5        $??5q?5G       " MaterialDesignRaisedDarkButton#??[ 5H      $	??100??5I       ? ToolTip$8 2Resource name: MaterialDesignRaisedLightDarkButton??5J      .??5K   2   Chỉnh sửa5M      5N      5P      5U      5V      5W      