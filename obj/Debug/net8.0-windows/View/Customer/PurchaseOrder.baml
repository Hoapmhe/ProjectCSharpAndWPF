   M S B A M L   `   `   `  ����E  AProjectPrn, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:ProjectPrn.View.CustomerProjectPrn.View.Customer  5   	   ,    &ProjectPrn.View.Customer.PurchaseOrder   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:ProjectPrn.View.Customer     5   	     � Title$  PurchaseOrder��5   	   $	��450��6   $	��800��6,   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dgvOrderHistory��5
         AutoGenerateColumns$ False��6,      
IsReadOnly$
 True��5         CanUserAddRows$ False��6%   $��10q�6<   "   VerticalScrollBarVisibility$
 Auto=�5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID Order��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6N   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 67   �� *Id+6N     5      $ Amount��6%   $ * 6a   	 65   �� *Amount+
 �� StringFormat$
 C2��6a     5      $ 
Order Date��6%   $ * 6p   	 69   �� *	OrderDate+$
 
MM/dd/yyyy��6p     5      $ Payment Date��6%   $ * 6t   	 6;   �� *PaymentDate+$
 
MM/dd/yyyy��6t     5      $ Payment Method��6%   $ * 6_   	 6=   �� *PaymentMethod+6_     5      $ Status��6%   $ * 6P   	 65   �� *Status+6P   5      5      5      