   M S B A M L   `   `   `  ����E  AProjectPrn, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:ProjectPrn.View.AdminProjectPrn.View.Admin  5   	   )    #ProjectPrn.View.Admin.UpdateAccount   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:ProjectPrn.View.Admin     5   	     � Title$  UpdateAccount��5   	   $	��450��6   $	��400��6,   .��5	      � 
������� � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6    �� Orientation$ 
Horizontal=�6"   $��10q�6;   .+�5      �� $	��100��6   $��	Fullname:��6    �� 5      -   5         ��Name$ txtFullname��5      $	��200��6+   ��5      �� *
Username+5      �� 5   
   $��1��6   $ 
Horizontal=�6"   $��10q�6;   .+�5      �� $	��100��6   $��	Password:��6    �� 5      -   5        $ txtPassword��5      $	��200��6+   ��5       �� *
Password+5!      �� 5$   
   $��3��6   $ 
Horizontal=�6"   $��10q�6;   .+�5%      �� $	��100��6   $��Email:��6    �� 5&      -   5        $ txtEmail��5&      $	��200��6(   ��5'      �� *Email+5(      �� 5+   
   $��4��6   $ 
Horizontal=�6"   $��10q�6;   .+�5,      �� $	��100��6   $��Phone:��6    �� 5-      -   5        $ txtPhone��5-      $	��200��6(   ��5.      �� *Phone+5/      �� 52   
   $��5��6   $ 
Horizontal=�6"   $��10q�6;   .+�53      �� $	��100��6   $��Role:��6    �� 54      -   5        $��cbxRole��54      $	��200��6&    �� DisplayMemberPath$ RoleName��62    �� SelectedValuePath$ RoleId��55   8    �� SelectedValue 6   �� *RoleId+6U   56      �� 59   
   $��6��6   $ 
Horizontal=�6"   $��10q�6;   .+�5:      �� $	��100��6   $��Wallet:��6    �� 5;      -   5        $ 	txtWallet��5;      $	��200��6)   ��5<      �� *Wallet+5=      �� 5@   
   $��7��6   $ 
Horizontal=�6"   $��Center=�6;   .+�5A      �� -   5         ��Name$ 	btnUpdate��5A      $��70��6(   $��30��63   .��6X   Update6`   �� 5B      -   5        $ 	btnCancel��5B      $��70��6(   $��30��63   $��10,0,0,0q�6@   .��6j   Cancel6r   5C      5D      5E      