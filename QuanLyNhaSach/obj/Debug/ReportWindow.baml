   M S B A M L   `   `   `  ????D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QuanLyNhaSachQuanLyNhaSach  5   	   O,clr-namespace:QuanLyNhaSach.UserControlKteamQuanLyNhaSach.UserControlKteam  5	   
        QuanLyNhaSach.ReportWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:QuanLyNhaSach     5   	   ;uc,clr-namespace:QuanLyNhaSach.UserControlKteam     5	   
   U QMaterialDesignThemes.Wpf, Version=2.3.1.953, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5          ?Name$  window??5   	      MaterialDesignBody#???   5   	   $??Regular"?5      $??13(?5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=?5         TextRenderingMode$
 Auto=?5        MaterialDesignPaper#???  5        MaterialDesignFont#???  5       ? 
ResizeMode$ NoResize=?5   	    ? WindowStyle$
 None=?5   	    ? WindowStartupLocation$ CenterScreen=?5   	    ? Title$ Sách??5   	   $	??500??6   $	??700??6#   .??5      ?  ? RowDefinitions 5   
   ?? 5      $
??auto ?6   6,   ?? 5      6   .+?5   
   ? $??0??6   .+?5      1   +QuanLyNhaSach.UserControlKteam.ControlBarUC  
 ? Tag 6   ?? *Title+	 ?? ElementName$	 window??6J   5       ? 5"   
   $??1??6    5#      ?? 5$      $
??auto ?6    60   ?? 5%      $
??auto ?6    60   ?? 5&      6"   ?? 5'      6"   .+?5+      #  MaterialDesignThemes.Wpf.Card  $??0??6"   $??5q?6/   .??5,      ? $??0 0 0 10q?6   .+?5-      ??  # MaterialDesignDisplay1TextBlock#??[ 6    Báo Cáo Tồn5/      50      51        53      $??1??6"   $??5q?6/   .??54      ? .+?55      ?? -   5        $??month??55       )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Tháng??56   !    & "MaterialDesignFloatingHintComboBox#??[ 57   !   $	??100??6]   $??15q?6i   59      ?? 5:      -   5        $
??year??5:       $

 Năm??5;   !   #??[ 5<   !   $	??100??6]   $??15q?6i   5>      ?? 5A      -   5        $??searchButton??5E   -     MaterialDesignRaisedButton#??[ 5A      $??5q?6Q   $	??100??5B   -   $??Tìm kiếm??5C   -    ? ToolTip$/ )Resource name: MaterialDesignRaisedButton??5D   -   5G   ,   5H      5I        5K      $??2??6"   $??5q?6/   $??Stretch=?6:   .??5L      ?? -   5        $??
reportbook??5L      $??Disabled=?6?   ??6-   ?? *List+ ?? SelectedItem 6K   ?? *SelectedItem+ ?? Mode$ OneWayToSource=? ?? View 5M      ?? 5N      .P?5O      ?? $??
Tên Sách??6-    ?? DisplayMemberBinding 6?   ?? *	TenSach+6j   ?? 5P      $??Tồn Đầu??6-    6>   ?? *TonDau+6h   ?? 5Q      $??
Phát Sinh??6-    6@   ?? *
PhatSinh+6l   ?? 5R      $??Tồn Cuối??6-    6?   ?? *	TonCuoi+6j   5T      5V      5W        5X      $??3??6"   $??5q?6/   $??Stretch=?6:   .??5Y      ?? -   5        $??reportmoney??5Y      $??Disabled=?6?   ??6.   ?? *List+ 6L   ?? *SelectedItem+$ OneWayToSource=? 5Z      ?? 5[      .P?5\      ?? $??Khách hàng??6-    ?? Width$
 auto??6l    6A   ?? *	KhachHang+6{   ?? 5]      $??Nợ đầu??6-    6=   ?? *NoDau+6f   ?? 5^      $??Phát sinh ??6-    6A   ?? *
PhatSinh+6m   ?? 5_      $??Nợ cuối??6-    6>   ?? *NoCuoi+6h   5a      5c      5d      5e      5f      5g      