   M S B A M L   `   `   `  ����Q  MBuildingMaterialsStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:BuildingMaterialsStore.Views.Pages"BuildingMaterialsStore.Views.Pages  5      4    .BuildingMaterialsStore.Views.Pages.ReportsPage   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Blocal0clr-namespace:BuildingMaterialsStore.Views.Pages     5      X TXceed.Wpf.Toolkit, Version=3.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        N� Title$  ReportsPage��5      .��5      ]� .+�5   
   ]� $	��Top=�6   .+�5      ]� $
��Left=�6   .+�5      ]� $	��Top=�6   .+�5      �� $	��250��6   $��37��5      $	��Top=�5      $
��Left=�5      $&�� Отчет по продавцу��5      ��5      �� *EmplRepCommand+5      ]� 5      $	��Top=�6   .+�5      �� $	��250��6   $��38��5      $	��Top=�5      $
��Left=�5      $,��&Отчет по покупателям��5       ��5!      �� *CustRepCommand+5#      ]� 5$      $	��Top=�6   .+�5%      �� $	��250��6   $��37��5&      $	��Top=�5'      $
��Left=�5(      $(��"Отчет по продавцам��5)      ��5*      �� *EmplsRepCommand+5,      5-      ]� 5.      $
��Left=�6   .+�5/      �� $	��Top=�50      $��С��51      (  "System.Windows.Controls.DatePicker  52      $	��Top=�6   $	��200��53      $��30��55      $��15(�56      $	��Top=�57      $
��Left=�58      $��
1, 0 ,0, 0q�5:         SelectedDate 59      �� *
DateFrom+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5:      �� 5;      $	��Top=�5<      $��Работник��5=      �� 5>      $	��Top=�6   $	��200��5?      $��30��5@      $��15(�5A      $	��Top=�5B      $
��Left=�5C      $��
1, 0 ,0, 0q�5F      ��5D      �� *	employees+ �� SelectedItem 5E      �� *SelectedEmployee+5G      5H      ]� 5I      .+�5J      �� $	��Top=�5K      $
��По��5L        5M      $	��Top=�6   $	��200��5N      $��30��5O      $��15(�5P      $	��Top=�5Q      $
��Left=�5R      $��
1, 0 ,0, 0q�5T       5S      �� *DateTo+$ TwoWay=�$ PropertyChanged=�5T      �� 5U      $	��Top=�5V      $��Покупатель��5W      �� 5X      $	��Top=�6   $	��200��5Y      $��30��5Z      $��15(�5[      $	��Top=�5\      $
��Left=�5]      $��
1, 0 ,0, 0q�5`      ��5^      �� *firms+ 5_      �� *SelectedFirm+5`      5a      5b      ]� 5c   
   .+�5d      ]� $	��Top=�6   $��30��6-   $��0 0 0 0q�69   .+�5e      �� $	��200��6   $
��Left=�5f      ��5g      �� *namesCategory+ 5h      �� *SelectNameCategoryItem+ J� Effect 5i      3  -System.Windows.Media.Effects.DropShadowEffect  5j         Color$ Black��6+      	Direction$	 300Q�69      
BlurRadius$ 13Q�6I   	   ShadowDepth$	 7Q�6Y   
   Opacity$	
 0.2Q�6i   5l      �� 5m      $	��195��6   $
��Left=�5n      ��5o      �� *names+ 5p      �� *SelectNameItem+ 5q        5r      $ Black��6+   $	 300Q�69   $ 13Q�6I   $	 7Q�6Y   $	
 0.2Q�6i   5t      �� 5u      $	��150��6   $
��Left=�5v      ��5w      �� *Text+$ TwoWay=�$ PropertyChanged=��� 5y      $	��105��6   $
��Left=�5z      $��Clear Filter��5|      ��5{      �� *ClearFilterCommand+5|      5      ]� 5�      .+�5�      &   System.Windows.Controls.DataGrid  $��0q�6      AutoGenerateColumns .     CanUserAddRows .     FrozenColumnCount$ 2��5�      
�������   ColumnHeaderHeight$ 30Q�5�      $	��650��5�      $
��Left=�5�      ��5�      �� *
storages+ 5�      �� *SelectItemDataGrid+ 5�        5�      $ Black��6+   $	 300Q�69   $ 13Q�6I   $	 7Q�6Y   $	
 0.2Q�6i      Columns 5�      4  .System.Windows.Controls.DataGridTemplateColumn  5�      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 70 61      CellTemplate 5�      �� 5�   "   .R�5�   &   �� ���#FFC200���#FFC200��5�   !   ��  �� Path$% DataContext.PurchasesRepCommand� �� RelativeSource ��  �� AncestorType"  .��5�   *   '  !MaterialDesignThemes.Wpf.PackIcon  
��������  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ QuestionAnswer=�6U   5�   '   5�   #   5�      0	  *System.Windows.Controls.DataGridTextColumn	  5�         Header$ Id��6-      
Visibility$ Hidden=�6:      
IsReadOnly . 1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 6N   �� $ 	idStorage�6s   	  5�      $ Категория��6-    .  6@   �� $ NameCategory�6h   	  5�      $ Название��6-    .  6?   �� $
 Name�6_   	  5�      $ Мера��6-    .  6;   �� $ UnitName�6_   	  5�      $ Количество��6-    .  6A   �� $ Count�6b   	  5�      $ Стоимость��6-    .  6A   �� $ Price� �� StringFormat$ {0:0.00}��6{   	  5�      $ Описание��6-    .  6@   �� $ Description�6g   5�      5�      5�      5�      5�      