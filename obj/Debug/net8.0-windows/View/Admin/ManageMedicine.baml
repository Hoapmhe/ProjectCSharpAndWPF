   M S B A M L   `   `   `  ����E  AProjectPrn, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:ProjectPrn.View.AdminProjectPrn.View.Admin  5      *    $ProjectPrn.View.Admin.ManageMedicine   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:ProjectPrn.View.Admin     5        N� Title$  ManageMedicine��5	      .��5      � 
������� � ColumnDefinitions 5   
   �� 5      $��3* �6   �� 5      $
��1.5* �6   .+�5   
   �� $��0��6   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��10q�62   .+�5      �� -   5         ��Name$ 	txtSearch��5      $	��200��6-   $��0,0,10,0q�69   �� 5      -   5         ��Name$ 	btnSearch��5      $	��100��6,   .��6P   Search6X   5      � 5       5      �� 5      $��* �6'   �� 5      $��4* �6'   .+�5      �� $��0��6   .��6(   	Filter:61   �� 5      -   5         ��Name$ cbxType��5   +   $��1��6   $��0,0,10,0q�6h   6|   5      &   System.Windows.Controls.DataGrid  5       -   5          Name$ 
dgvDisplay��5       $��10q�6,      AutoGenerateColumns$ False��5!         
IsReadOnly$
 True��6,   	   Columns	 5"      0  *System.Windows.Controls.DataGridTextColumn  5#      ,  &System.Windows.Controls.DataGridColumn
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 * 6)      Header$
 Name��63   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6A   �� *Name+6\     5$      $
 * 6)   $ 
Decription��63    6G   �� *
Decription+6h     5%      $
 * 6)   $ Min age��63    6D   �� *MinAge+6a     5&      $
 * 6)   $
 Type��63    6A   �� *Type+6\     5'      $
 * 6)   $ Quantity��63    6E   �� *
Quantity+6d     5(      $
 * 6)   $ Price��63    6B   �� *Price+6^     5)      $
 * 6)   $ Expired Date��63    6I   �� *ExpiredDate+6k     5*      $
 * 6)   $ Status��63    6C   �� *Status+6`   5,      �� 5.      $ 
Horizontal=�6   $��Center=�62   $��20��6O   .+�5/      �� -   5        $��Previous��5/      6,   �� 50      -   5        $ lstPageNumbers��50      $��40��6f   $
��10,0q�6q   $��Center=�6   �� 51      -   5        $
��Next��51      6(   52      53      �� 55   
   $��1��6   $��0,10,0,0q�6%   .+�56      �� $ 
Horizontal=�6   .+�57      �� $
��Name��6   $��80��6'   �� 58      -   5        $ txtName��58      $	��150��6+   ��59      ��  �� ElementName$ 
dgvDisplay�� �� Path$ SelectedItem.Name� �� Mode$ OneWay=�5:      �� 5<      $ 
Horizontal=�6   .+�5=      �� $��
Decription��6   $��80��6-   �� 5>      -	   5        $ txtDecription��5>      $	��150��61   ��5?      �� $ 
dgvDisplay��$ SelectedItem.Decription�$ OneWay=�5@      �� 5B      $ 
Horizontal=�6   .+�5C      �� $��Min age��6   $��80��6*   �� 5D      -
   5        $ txtAge��5D      $	��150��6*   ��5E      �� $ 
dgvDisplay��$ SelectedItem.MinAge�$ OneWay=�5F      �� 5H      $ 
Horizontal=�6   .+�5I      �� $��Quantity��6   $��80��6+   �� 5J      -   5        $ txtQuantity��5J      $	��150��6/   ��5K      �� $ 
dgvDisplay��$ SelectedItem.Quantity�$ OneWay=�5L      �� 5N      $ 
Horizontal=�6   .+�5O      �� $��Price��6   $��80��6(   �� 5P      -   5        $ txtPrice��5P      $	��150��6,   ��5Q      �� $ 
dgvDisplay��$ SelectedItem.Price�$ OneWay=�5R      �� 5T      $ 
Horizontal=�6   .+�5U      �� $��Expired date��6   $��80��6/   (  "System.Windows.Controls.DatePicker  5V      -   5          Name$ dpkDate��5V      $	��150��6.      Text 5W      �� $ 
dgvDisplay��$ SelectedItem.ExpiredDate�$ OneWay=�6s   5X      �� 5Z      $ 
Horizontal=�6   .+�5[      �� $��Status��6   $��80��6)   �� 5\      -   5        $ 	cbxStatus��5\      $	��150��6.    �� SelectedValuePath$	 Tag��6:    �� SelectedValue 5]      �� $ 
dgvDisplay��$ SelectedItem.Status�$ OneWay=�.@�5^      �� $��Active��6#   
 � Tag$ 1��64   �� 5_      $��Pause��6#   $ 2��63   5`      5a      �� 5c      $ 
Horizontal=�6   .+�5d      �� $
��Type��6   $��80��6'   �� 5e      -   5        $ cbxTypeMedicine��5e      $	��150��64    �� DisplayMemberPath$
 Type��5f      $
 Type��64    6M   �� $ 
dgvDisplay��$ SelectedItem.Type�$ OneWay=�6�   5g      � 5i       5j      �� 5k      $��* �6'   �� 5l      $��* �6'   �� 5m      $��* �6'   .+�5p      �� -   5        $ 	btnInsert��5p   )   $��0��6   $��30��6<   $��60��6H   $��10q�6S   .��6x   Add6}   �� 5q      -   5        $ 	btnUpdate��5q   )   $��1��6   $��30��6<   $��60��6H   $��
14,10,0,10q�6S   $
��Left=�6   .��6�   Update6�   �� 5r      -   5        $ 	btnDelete��5r   )   $��2��6   $��30��6<   $��60��6H   $��10q�6S   .��6x   Delete6�   5s      �� 5u      -   5        $ 
btnNewType��5u      $��20, 10, 20, 10q�6)   .��6Z   Add new type medicine6q   5v      5w      5x      