   M S B A M L   `   `   `  ????D  @QuanLyKho, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QuanLyNhaSachQuanLyNhaSach  5   	   O,clr-namespace:QuanLyNhaSach.UserControlKteamQuanLyNhaSach.UserControlKteam  5	   
       QuanLyNhaSach.BookWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:QuanLyNhaSach     5   	   ;uc,clr-namespace:QuanLyNhaSach.UserControlKteam     5	   
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
??auto ?6    60   ?? 5&      6"   .+?5*      #  MaterialDesignThemes.Wpf.Card  $??0??6"   $??5q?6/   .??5+      ? $??0 0 0 10q?6   .+?5-      ?? -   5        $
??name??5-      $?? ??6*   $??5 5 15 5q?62   )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 
Tên Sách??6D   {?.  % !MaterialDesignFloatingHintTextBox#??[ 6   ?? 5.      -   5        $
??type??5.      $?? ??6*   $??5 5 15 5q?62   $
 Thể Loại??6D   {?. #??[ 6   ?? 5/      -   5        $??author??5/      $?? ??6,   $??5 5 15 5q?64   $
 
Tác Giả??6F   {?. #??[ 6?   ?? 50      -   5        $??quantity??50      $??5 5 15 5q?6l   $
 Số Lượng??6~   #??[ 6?   ??6.   ?? *	SoLuong+ ?? UpdateSourceTrigger$ PropertyChanged=?6?   (  "System.Windows.Controls.DatePicker  51      -   5        $
??date??51   !   $??Center=?6-   $	??100??6?   $??	5 5 15 -7q?6?   $
 Ngày Nhập??6?    ( $MaterialDesignFloatingHintDatePicker#??[ 6?      SelectedDate 6H   ?? *
NgayNhap+$ PropertyChanged=?6?   52      53        55      $??1??6"   $??5q?6/   .??56      ? .+?57      ?? -   5        $??	addButton??57      $??Thêm??6e   $??5q?6t   $	??100??6   ??6F   ?? *
AddCommand+6?   ?? 58      -   5        $??Sửa??58   =   $??5q?6L   $	??100??6W   ??6   ?? *EditCommand+6?   ?? 59      -	   5        $??Xóa??59   ?   $??5q?6N   $	??100??6Y   ??6   ?? *DeleteCommand+6?   5:      5;        5=      $??2??6"   $??5q?6/   $??Stretch=?6:   .??5>      ?? -
   5        $??input??5>      $??Disabled=?6?   ??6(   ?? *List+ ?? SelectedItem 6o   ?? *SelectedItem+ ?? Mode$ OneWayToSource=? ?? View 5?      ?? 5@      .P?5A   "   ?? $??Id??61    ?? DisplayMemberBinding 6=   ?? *MaPhieuNhap+6l   ?? 5B   "   $??
Tên Sách??61    6C   ?? *	TenSach+6n   ?? 5C   "   $??Thể Loại??61    6C   ?? *
TenTheLoai+6q   ?? 5D   "   $??
Tác Giả??61    6B   ?? *TacGia+6l   ?? 5E   "   $??Số Lượng??61    6C   ?? *	SoLuong+6n   ?? 5F   "   $??Ngày Nhập??61    6E   ?? *
NgayNhap+6q   5G      5I      5J      5K      5L      5M      