   M S B A M L   `   `   `  ���� B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5clr-namespace:WpfApp1.ConverterWpfApp1.Converter  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:    4WpfApp1.Converter.WindowBaseBorderThicknessConverter   BorderThicknessConverter7   1WpfApp1.Converter.WindowBaseCornerRadiusConverter  CornerRadiusConverter;   5WpfApp1.Converter.WindowBaseCloseMarginRightConverter  CloseMarginRightConverter  Hearderstyle  �� 
TargetType   WpfApp1.WindowBase �� Property �� Value �� 
StartPoint �� EndPoint � Offset � Color  FontAwesome  WindowBaseButton �� 
TargetType �� CornerRadius	 �� Triggers
 P� Property P� Value  	ShawdText3  -System.Windows.Media.Effects.DropShadowEffect   ShadowDepth   Color   
BlurRadius   HeaderBackground �� Path �� RelativeSource �� 	Converter �� ConverterParameter � RowDefinitions � ColumnDefinitions �� Orientation � Icon � Title ��Name �� 	Converter�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     localclr-namespace:WpfApp1  -	converterclr-namespace:WpfApp1.Converter  %  &	        &	      &	 
     &	     &	 �     &	 �     &	 �   '      7  7  7  7  7  7          �� "   .���  �@ HeaderBackground �� $	 0,0&�$	 1,1&�.��� $ 0Q�$ #1C69CB��� $ 1Q�$ #57A1E8���� .���  � ��$3 -pack://application:,,,/Resources/#FontAwesome)���  � ��$ 11(��� "  ��.���  � �� �� $	 0,0&�$	 0,1&�.��� $ 0Q�$ White��� $
 0.05Q�$ #ff6666��� $	 0.1Q�$ #e60000��� $	 0.4Q�$  #b30000��� $	 0.8Q�$ #b30000��� $
 0.95Q�$ #ff6666��� $ 1Q�$ White����  � ��
 �   ���  � �� �� " ��.R��� #��z��#��z��$ 0,0,5,5��._��� $��Center=�$��Center=�#��z��	 P� 
 �@J�IsMouseOver . . ���  � �� �#c75050��  � ��
 ������� "  ��.���  �@J�Effect   $ -8Q�$ White��$ 15Q��� "   .���  �@�AllowsTransparency . ��  �@�WindowStyle$
 None=���  �@�
ResizeMode$ CanMinimize=���  �@ HeaderBackground �� $	 0,0&�$	 0,1&�.��� $ 0Q�$ #38352e��� $	 0.2Q�$  #38352e��� $
 0.35Q�$ White��� $
 0.42Q�$ #625d51��� $ 1Q�$ #625d51����  �@ CornerRadius$ 10����  � ��$ 8q���  � ��
 �������  �@ HeaderHeight$ 40����  � �� �� "  .R��� $��around��#��z $��0q� �� $ CornerRadius� �� *TemplatedParent+8   $ around��._�� $
��root��8��  �� ����  �� *TemplatedParent+$ HeaderHeight���  �� .+��� $��header��$��0��._�]� $
��Auto��.+��� $��Center=�$ 
Horizontal=�$
��Left=�.+��� #��z $��20��$��20��$��10,0,0,0q��� #��z 8�� $��14(�$��Microsoft Yihi)�$��Center=�$��6,0,0,0q��� $��Right=�$��32��$��Right=�$	��Top=�$ 
Horizontal=�.+��� $ btnClose��$	����$��72��8�� ���� $ CornerRadius� �� *TemplatedParent+8  �� $��1��#��z��$	��Top=�$
��Auto������ *BorderThickness+8  ._��� .u��� 