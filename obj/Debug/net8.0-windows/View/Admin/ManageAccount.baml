   M S B A M L   `   `   `  ����E  AProjectPrn, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:ProjectPrn.View.AdminProjectPrn.View.Admin  5      )    #ProjectPrn.View.Admin.ManageAccount   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:ProjectPrn.View.Admin     5        N� Title$  ManageAccount��5	      .��5      � 
������� � ColumnDefinitions 5   
   �� 5      $��5* �6   6,   �� 5      $��* �6   6+   .+�5   
   �� $��0��6   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��10q�62   .+�5      �� -   5         ��Name$ 	txtSearch��5      $	��200��6-   $��0,0,10,0q�69   �� 5      -   5         ��Name$ 	btnSearch��5      $	��100��6,   .��6Q   Search6Y   5      &   System.Windows.Controls.DataGrid  5      -   5          Name$ 
dgvDisplay��5         AutoGenerateColumns$ False��6+      CanUserAddRows$ False��6G   $��Stretch=�6^      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Width5  /System.Windows.Controls.DataGridLengthConverter$
	 0.5* 6)   
   Header$
 ID��66   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6B   �� *Id+ �� Mode$ OneWay=�  5      $
	 1.5* 6)   $
 FullName��66    6H   �� *
Username+$ OneWay=�  5      $	 * 6)   $
 Email��63    6B   �� *Email+$ OneWay=�  5      $	 * 6)   $
 Phone Number��63    6I   �� *Phone+$ OneWay=�  5      $
	 0.7* 6)   $

 Role��66    6D   �� *
RoleName+$ OneWay=�5      5       �� 5"   
   $��1��6   .+�5#      �� -   5        $ 	btnInsert��5#      $��30��6(   $	��100��64   $��10q�6@   .��6d   Insert6l   �� 5$      -   5        $ 	btnUpdate��5$      $��30��6(   $	��100��64   $��10q�6@   .��6d   Update6l   �� 5%      -   5        $ 	btnDelete��5%      $��30��6(   $	��100��64   $��10q�6@   .��6d   Delete6l   5&      5'      5(      