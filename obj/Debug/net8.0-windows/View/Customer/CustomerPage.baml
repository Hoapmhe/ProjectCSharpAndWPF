   M S B A M L   `   `   `  ����E  AProjectPrn, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:ProjectPrn.View.CustomerProjectPrn.View.Customer  5   	   +    %ProjectPrn.View.Customer.CustomerPage   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:ProjectPrn.View.Customer     5   	     � Title$  CustomerPage��5   	   $	��450��6   $	��800��6+   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $��3* �6   �� 5      $
��1.5* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��7* �6   .+�5   
   ]� $��0��6   $��2��6!   $��Right=�65   $	��Top=�6Q   $��10q�6i   .+�5      o� .@�5      m� $��
My Account��6   .@�5      m� -   5        $��View Profile��5      65   m� 5      -   5        $��My Order��5      61   m� 5      -   5        $��My Purchased��5      65   m� 5      -   5        $��Logout��5      6/   5      5      5      �� 5   
   $��2��6   $	��380��6)   $��2��66   $��Bottom=�6G   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��10q�62   .+�5       �� -   5         ��Name$ 	txtSearch��5       $	��200��6-   $��0,0,10,0q�69   �� 5!      -   5         ��Name$ 	btnSearch��5!      $	��100��6,   .��6P   Search6X   �� 5"      -   5        $ btnAddToCart��5"      $	��120��6/   $��	10,0,10,0q�6;   .��6i   Add to cart6v   5#      � 5%       5&      �� 5'      $��* �6'   �� 5(      $��4* �6'   .+�5*      �� $��0��6   .��6(   	Filter:61   �� 5+      -   5         ��Name$ cbxType��5+   +   $��1��6   $��0,0,10,0q�6h   6|   5,      &   System.Windows.Controls.DataGrid  5.      -	   5          Name$ 
dgvDisplay��5.      $��10q�6,      CanUserAddRows$ False��68   	   AutoGenerateColumns$	 False��5/      
   
IsReadOnly$

 True��65      Columns 50      0  *System.Windows.Controls.DataGridTextColumn  51      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6)      Header$
 Name��63   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6A   �� *Name+6\     52      $ * 6)   $ 
Decription��63    6G   �� *
Decription+6h     53      $ * 6)   $ Min age��63    6D   �� *MinAge+6a     54      $ * 6)   $
 Type��63    6A   �� *Type+6\     55      $ * 6)   $ Quantity��63    6E   �� *
Quantity+6d     56      $ * 6)   $ Price��63    6B   �� *Price+6^     57      $ * 6)   $ Expired Date��63    6I   �� *ExpiredDate+6k   59      �� 5;      $ 
Horizontal=�6   $��Center=�62   $��20��6O   .+�5<      �� -
   5        $��Previous��5<      6,   �� 5=      -   5        $ lstPageNumbers��5=      $��40��6f   $
��10,0q�6q   $��Center=�6   �� 5>      -   5        $
��Next��5>      6(   5?      5@      5B      5C      