   M S B A M L   `   `   `  ????D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QuanLyNhaSachQuanLyNhaSach  5   	   O,clr-namespace:QuanLyNhaSach.UserControlKteamQuanLyNhaSach.UserControlKteam  5	   
       QuanLyNhaSach.BillWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:QuanLyNhaSach     5   	   ;uc,clr-namespace:QuanLyNhaSach.UserControlKteam     5	   
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
??auto ?6    60   ?? 5&      6"   .+?5*      #  MaterialDesignThemes.Wpf.Card  $??0??6"   $??5q?6/   .??5+      ? $??0 0 0 10q?6   .+?5,      ?? -   5        $??customerCombobox??5,      $??5 5 15 5q?67   )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Tên Khách Hàng??6I    & "MaterialDesignFloatingHintComboBox#??[ 6y   ??5-      ?? 5.      .R?5/   "   ??  ?? Orientation$ 
Horizontal=?6-   .+?50   &   ?? $??16??6M   $??16??6X   ??60   ?? *MaKhachHang+6X   ?? 51   &   ??60   ?? *TenKhachHang+52   #   53      55      ?? 56      -   5        $??bookCombobox??56      $??5 5 15 5q?64   $
 
Tên Sách??6w   #??[ 6?   ??57      ?? 58      .R?59   "   ?? $ 
Horizontal=?6-   .+?5:   &   ?? $??16??6H   $??16??6S   ??60   ?? *MaSach+6S   ?? 5;   &   ??60   ?? *	TenSach+5<   #   5=      5?      ?? 5@      -   5        $??typeBook??5@      {?.  $??5 5 15 5q?6~   $
 Thể Loại??6?    % !MaterialDesignFloatingHintTextBox#??[ 6?   ??6.   ?? *	TheLoai+ ?? UpdateSourceTrigger$ PropertyChanged=?6?   ?? 5A      -   5        $??quantity??5A      $??5 5 15 5q?6l   $
 Số Lượng??6~   #??[ 6?   ??6.   ?? *	SoLuong+$ PropertyChanged=?6?   ?? 5B      -   5        $??price??5B      $??5 5 15 5q?6i   $
 
Đơn Giá??6{   #??[ 6?   ??6,   ?? *DonGia+$ PropertyChanged=?6?   (  "System.Windows.Controls.DatePicker  5C      -   5        $
??date??5C   !   $??Center=?6-   $	??134??6?   $??	5 5 15 -7q?6?   $
 Ngày Lập Hóa Đơn??6?    ( $MaterialDesignFloatingHintDatePicker#??[ 6?      SelectedDate 6H   ?? *NgayLapHoaDon+$ PropertyChanged=?6?   5D      5E        5G      $??1??6"   $??5q?6/   .??5H      ? .+?5I      ?? -   5        $??Thêm??5I   <   $??5q?6K   $	??100??6V   ??6   ?? *
AddCommand+6w   ?? 5J      -	   5        $??Sửa??5J   =   $??5q?6L   $	??100??6W   ??6   ?? *EditCommand+6{   ?? 5K      -
   5        $??Xóa??5K   ?   $??5q?6N   $	??100??6Y   ??6   ?? *DeleteCommand+6}   5L      5M        5O      $??2??6"   $??5q?6/   $??Stretch=?6:   .??5P      ?? $
??Auto=?6   .??5Q      ?? -   5        $??billListview??5Q      ??6d   ?? *List+ ?? SelectedItem 6?   ?? *SelectedItem+ ?? Mode$ OneWayToSource=? ?? View 5R      ?? 5S      .P?5T   "   ?? $??Id??61    ?? DisplayMemberBinding 6=   ?? *
MaHoaDon+6i   ?? 5U   "   $??Tên Khách Hàng??61    6I   ?? *TenKhachHang+6y   ?? 5V   "   $??
Tên Sách??61    6C   ?? *	TenSach+6n   ?? 5W   "   $??Thể Loại??61    6C   ?? *
TenTheLoai+6q   ?? 5X   "   $??Số Lượng??61    6C   ?? *
SoLuongMua+6q   ?? 5Y   "   $??
Đơn Giá??61    6B   ?? *DonGia+6l   ?? 5Z   "   $??Ngày Lập Hóa Đơn??61    6L   ?? *NgayLapHoaDon+6}   5[      5]      5^      5_      5`      5a      5b      