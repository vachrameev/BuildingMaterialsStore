   M S B A M L   `   `   `  ����Q  MBuildingMaterialsStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:BuildingMaterialsStore.ViewsBuildingMaterialsStore.Views  5   	   4    .BuildingMaterialsStore.Views.WindowAddCustomer   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:BuildingMaterialsStore.Views     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   X TXceed.Wpf.Toolkit, Version=3.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	     � WindowStyle$
  None=�5
   	    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5   	    � Title$ WindowAddCustomer��5   	   $	��250��6#   $	��410��60   .��5      ]� .+�5   
   ]� -   5        $	��Top=�5      $	��Top=�5      ���#F8F8F8.+�5      �� $��0 0 0 1q�6   ���#CACACA._�5      ]� .+�5      �� $��30��6   $��Right=�5      $��30��5      ��5      �� *QuitAplicationCommand+.��5      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ Close=�62   $��20��5   2   $��20��5    2   $��0q�5!   2   $��Center=�5"   2   $��Center=�5#   2   5%      5&      5'      5(      ]� 5)   
   $	��Top=�6   .+�5*   
   ]� $
��Left=�5+      .+�5,      �� $	��Top=�5-      $��Название��5.      �� 5/      $	��Top=�6   $	��200��50      $��30��51      $��15(�52      $	��Top=�53      $
��Left=�54      $��
1, 0 ,0, 0q�56      ��55      �� *
FirmName+ �� Mode$ TwoWay=�56      �� 58      $	��Top=�59      $��	У.Н.П.��5:      �� 5;      $	��Top=�6   $	��200��5<      $��30��5=      $��15(�5>      $	��Top=�5?      $
��Left=�5@      $��
1, 0 ,0, 0q�5B      ��5A      �� *UNP+$ TwoWay=�5B      �� 5C      $	��Top=�5D      $��Номер счета��5E      �� 5F      $	��Top=�6   $	��200��5G      $��30��5H      $��15(�5I      $	��Top=�5J      $
��Left=�5K      $��
1, 0 ,0, 0q�5M      ��5L      �� *FirmAccountNumber+$ TwoWay=�5M      5N      ]� 5O   
   $��Right=�6   .+�5P      �� $	��Top=�5Q      $��Реквизиты��5R      �� 5S      $	��Top=�6   $	��200��5T      $��30��5U      $��15(�5V      $	��Top=�5W      $
��Left=�5X      $��
1, 0 ,0, 0q�5Z      ��5Y      �� *FirmBankDetails+$ TwoWay=�5Z      �� 5\      $	��Top=�5]      $%��Физический адрес��5^      �� 5_      $	��Top=�6   $	��200��5`      $��30��5a      $��15(�5b      $	��Top=�5c      $
��Left=�5d      $��
1, 0 ,0, 0q�5g      ��5f      �� *FirmLegalAddress+$ TwoWay=�5g      �� 5h      $	��Top=�5i      $!��Номер телефона��5j      %  Xceed.Wpf.Toolkit.MaskedTextBox  5k      $	��Top=�6%   $	��200��5l      $��30��5m      $��15(�5n      $	��Top=�5o      $
��Left=�5p         Mask$ +375 00 000 00 00��5q      $��
1, 0 ,0, 0q�5s      ��5r      �� *FirmPhoneNumber+$ TwoWay=�5s      5t      5u      ]� 5v   
   $��Bottom=�6   .+�5w      �� $	��Top=�6   $��Bottom=�5x      $��30��5y      $��Принять��5z      ��5{      �� *
AddCommand+5}      5~      5      