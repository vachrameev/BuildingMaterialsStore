   M S B A M L   `   `   `  ����Q  MBuildingMaterialsStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:BuildingMaterialsStore.ViewsBuildingMaterialsStore.Views  5   	   U/clr-namespace:BuildingMaterialsStore.ViewModels!BuildingMaterialsStore.ViewModels  5   	   .    (BuildingMaterialsStore.Views.AdminWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:BuildingMaterialsStore.Views     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   8vm/clr-namespace:BuildingMaterialsStore.ViewModels  5   	     � Title$  
MainWindow��5
   	   $	��600��6   $	��900��6)    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5   	    � DataContext 5      :  4BuildingMaterialsStore.ViewModels.MainAdminViewModel  5   
    � 	Resources 5         MyButtonStyleClose �� 
TargetType �� Property �� Value	 �� 
TargetType
 ��Name J� SnapsToDevicePixels ��Name �� Triggers P� Property P� Value �� 
TargetName  MyButtonStyleTreiAndHelp��%�  &	        &	 K    �� 5   
   " ��6+   .�5      ��  � �� �#F8F8F86+   �� 5       � �� �#F8F8F86,   �� 5       � �� �#607D8B6+   �� 5       � ��$ Center=�6;   �� 5       � ��$ Center=�69   �� 5       � �� 5      �� 5      "	 ��6&   .R�5      �� $
 border��6!   #��z��61   #��z��6]   #��z��6�    . ._�5      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5       5       P� 5!       �@��IsDefaulted . . �5"   "   �� $ border��6@   # � ��6T    � ��5#      P� 5$       �@J�IsMouseOver . . �5%   "   ��  � ��
 �����6?   �� 5&   "    � ��
 �  ��6@   �� 5'   "    � ��
 �  ��6@   �� 5(   "    �@J�Opacity$	 0.5Q�6<   5)      5+      5-      5.      �� 5/   
   " ��61   .�50      ��  � �� �#F8F8F86+   �� 51       � �� �#F8F8F86,   �� 52       � �� �#607D8B6+   �� 53       � ��$ Center=�6;   �� 54       � ��$ Center=�69   �� 55       � �� 56      �� 57      "	 ��6&   .R�58      �� $
 border��6!   #��z��61   #��z��6]   #��z��6�    . ._�59      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5:       5;      P� 5<       �@��IsDefaulted . . �5=   "   �� $ border��6@   # � ��6T    � ��5>      P� 5?       �@J�IsMouseOver . . �5@   "   ��  � ��
 �����6?   �� 5A   "    � �� �#1A1A246@   �� 5B   "    � �� �#1A1A246@   �� 5C   "    �@J�Opacity$	 0.3Q�6<   5D      5F      5H      5I      5J      .��5K      ]� .+�5L   
   ]� 
���   �$	��250��5M      $
��Left=�5N      .+�5P      �� .+�5Q      �� $��Center=�6   $��0 70 0 0q�5R      
���   �$��Center=�5T       �� SelectedIndex 5U      �� *SeletedIndex+.@�5W      �� $
��Left=�6#   $��20(�5X   +   $	��230��5Y   +   $��0q�5Z   +   .��5[      ]� $��Center=�6$   .+�5\      '  !MaterialDesignThemes.Wpf.PackIcon  $��25��5^   >   $��Center=�5_   >   $��25��5`   >   �� 5b      
�������$��0,0,0,0q�5c   0   Работники5d   <   5e      5g      �� 5h      $
��Left=�6#   $��20(�5i   +   $	��230��5j   +   $��0q�5k   +   .��5l      ]� $��Center=�6$   .+�5m        $��25��5n   >   $��Center=�5o   >   $��25��5p   >   �� 5r      
�������$��0,0,0,0q�5s   0   $
��Wrap=�5t   0   Покупатели6V   5u      5v      �� 5w      $
��Left=�6#   $��20(�5x   +   $	��230��5y   +   $��0q�5z   +   .��5{      ]� $��Center=�6$   .+�5|        $��25��5}   >   $��Center=�5~   >   $��25��5   >   �� 5�      
�������$��0,0,0,0q�5�   0   $
��Wrap=�5�   0   
Склад6K   5�      5�      �� 5�      $
��Left=�6#   $��20(�5�   +   $	��230��5�   +   $��0q�5�   +   .��5�      ]� $��Center=�6$   .+�5�        $��25��5�   >   $��Center=�5�   >   $��25��5�   >   �� 5�      
�������$��0,0,0,0q�5�   0   $
��Wrap=�5�   0   Отчеты6L   5�      5�      5�      5�      5�      ]� 5�   
   -   5        $	��Top=�5�      $	��Top=�5�      ���#F8F8F8.+�5�      �� $��0 0 0 1q�6   ���#CACACA._�5�      ��  �� Orientation$ 
Horizontal=�6   $��Right=�5�      .+�5�      �� $��1 0 0 0q�6   ���#CACACA5�      �� 5�      $��30��6   $��30��5�      #��[ 5�      ��5�      �� *WindowStateCommand+.��5�      �� $��_��6$   $��30(�5�   $   $��Bottom=�5�   $   $��Center=�5�   $   5�      �� 5�      $��30��6   $��30��5�      #��[ 5�      ��5�      �� *HelpAplicationCommand+.��5�        �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ QuestionMark=�62   $��20��5�   2   $��20��5�   2   $��0q�5�   2   $��Center=�5�   2   $��Center=�5�   2   5�      �� 5�      $��30��6   $��30��5�      #��[  5�      ��5�      �� *QuitAplicationCommand+.��5�        $ Close=�62   $��20��5�   2   $��20��5�   2   $��0q�5�   2   $��Center=�5�   2   $��Center=�5�   2   5�      5�      5�      5�      ]� 5�   
   ���#F8F8F8.+�5�       �   � NavigationUIVisibility$ Hidden=�5�      ��5�      �� *CurrentPage+5�      5�      5�      5�      