   M S B A M L   `   `   `  ����E  AProjectPrn, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:ProjectPrn.View.SaleProjectPrn.View.Sale  5   	   %    ProjectPrn.View.Sale.SallerPage   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:ProjectPrn.View.Sale     5   	     � Title$  
SallerPage��5   	   $	��450��6   $	��800��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��0.5* �6   6,   �� 5      $��5* �6   6*   �� 5      $��* �6   6)   .+�5   
   �� -   5        $��	btnLogout��5      $��0��5      $��Logout��6   $��60��6/   $��Right=�5      $	��Top=�6-   $��	0,10,10,0q�6E   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 
dgvDisplay��5       $��1��6      AutoGenerateColumns$ False��64      
IsReadOnly$
 True��5         CanUserAddRows$ False��6   $��10q�64   "   VerticalScrollBarVisibility$
 Auto=�5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID Order��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 * 6N   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 67   �� *Id+6N     5      $ 
Email user��6%   $	 * 6S   
 69   �� *Email+6S     5      $ Amount��6%   $	 * 6a   
 65   �� *Amount+ �� StringFormat$ C2��6a     5      $ 
Order Date��6%   $	 * 6p   
 69   �� *	OrderDate+$ 
MM/dd/yyyy��6p     5      $ Payment Date��6%   $	 * 6t   
 6;   �� *PaymentDate+$ 
MM/dd/yyyy��6t     5      $ Payment Method��6%   $	 * 6c   
 6=   �� *PaymentMethodName+6c     5      $ Status��6%   $	 * 6T   
 65   �� *
StatusName+6T   4  .System.Windows.Controls.DataGridTemplateColumn  5      $ Action��6)   $	 * 69      CellTemplate 5       �� 5!      .R�5"      �� -   5        $��Details��5"   %   
 � Tag 6S   �� *Id+5#      5%      5'      �� 5)   
   -   5         ��Name$ 
btnApprove��5)      $��2��6   $	��100��62   $��35��5*      .��66   Approve Orders6F   5+      5,      