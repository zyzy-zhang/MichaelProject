   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5      5clr-namespace:WpfApp1.ConverterWpfApp1.Converter  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:    4WpfApp1.Converter.WindowBaseBorderThicknessConverter   BorderThicknessConverter7   1WpfApp1.Converter.WindowBaseCornerRadiusConverter  CornerRadiusConverter;   5WpfApp1.Converter.WindowBaseCloseMarginRightConverter  CloseMarginRightConverter  FontAwesome  �� Property �� Value  WindowBaseButton �� 
TargetType �� 
StartPoint �� EndPoint � Offset � Color �� 
TargetType �� CornerRadius	 �� Triggers
 P� Property P� Value  	ShawdText3  -System.Windows.Media.Effects.DropShadowEffect   ShadowDepth   Color   
BlurRadius   WpfApp1.WindowBase   HeaderBackground �� Path �� RelativeSource �� 	Converter �� ConverterParameter � RowDefinitions � ColumnDefinitions �� Orientation � Icon � Title ��Name �� 	Converter�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      localclr-namespace:WpfApp1  5      -	converterclr-namespace:WpfApp1.Converter  5      %�  &	        &	      &	 &     &	 9     &	 �     &	 H   '  �    7  7  7  7  7  7      5      63     5      60     5	      64   �� 5      .�5   
   ��   � ��$3 -pack://application:,,,/Resources/#FontAwesome)�63   �� 5   
     � ��$ 11(�61   5      �� 5      " ��6%   .�5   
   ��   � �� 5      �� 5      $	 0,0&�6&   $	 0,1&�67   .��5      � $ 0Q�6#   $ White��6.   � 5      $
 0.05Q�6#   $ #ff6666��61   � 5      $	 0.1Q�6#   $ #e60000��60   6B   � 5      $	 0.4Q�6#   $  #b30000��60   6C   � 5      $	 0.8Q�6#   $ #b30000��60   6B   � 5      $
 0.95Q�6#   $ #ff6666��61   � 5      $ 1Q�6#   $ White��6.   6>   5      5      �� 5   
     � ��
 �   �6'   �� 5    
     � �� 5!      �� 5"      " ��6"   .R�5#      �� #��z��6   #��z��5$      $ 0,0,5,5��5%      ._�5'      �� $��Center=�6+   $��Center=�5(   +   #��z��5)   +   5+      	 5,      P� 5-      
 �@J�IsMouseOver . . �5.      ��   � �� �#c750506;   �� 5/        � ��
 �����6;   50      52      54      55      �� 57      " ��6   .�58   
   ��   �@J�Effect 59        5:      $ -8Q�6#   $ White��64   $ 15Q�6B   5<      5=      �� 5@      "  6   .�5A   
   ��   �@�AllowsTransparency . 6/   �� 5B   
     �@�WindowStyle$
 None=�6(   �� 5C   
     �@�
ResizeMode$ CanMinimize=�6'   �� 5D   
     �@ HeaderBackground 5E      �� 5F      $	 0,0&�6&   $	 0,1&�67   .��5G      � $ 0Q�6#   $ #38352e��6.   6@   � 5H      $	 0.2Q�6#   $  #38352e��60   6C   � 5I      $
 0.35Q�6#   $ White��61   6A   � 5J      $
 0.42Q�6#   $ #625d51��61   6C   � 5K      $ 1Q�6#   $ #625d51��6.   6@   5L      5N      �� 5O   
     �@ CornerRadius$ 10��6)   �� 5P   
     � ��$ 8q�6,   �� 5Q   
     � ��
 �����6'   �� 5R   
     �@ HeaderHeight$ 40��6)   �� 5S   
     � �� 5T      �� 5U      "  6"   .R�5V      �� $��around��6   #��z 6+   $��0q�5W   k    5V   [   �� $ CornerRadius� �� *TemplatedParent+8   $ around��._�5X      � $
��root��6   8��  5Y      �� 5Z   "   ��60   ��  �� *TemplatedParent+$ HeaderHeight��� 5[   "    5]      �� 5^   "   .+�5`      �� $��header��62   $��0��6%   ._�5a   "   ]� $
��Auto��6,   .+�5b   &   �� $��Center=�61   $ 
Horizontal=�6L   $
��Left=�6e   .+�5c   *   �� #��z 60   $��20��6P   $��20��6_   $��10,0,0,0q�6m   �� 5d   *   #��z 64   8�� $��14(�6v   $��Microsoft Yihi)�6�   $��Center=�6�   $��6,0,0,0q�6�   6�   5e   '   �� 5f   &   $��Right=�61   $��32��6H   $��Right=�6T   $	��Top=�6p   $ 
Horizontal=�6�   .+�5g   *   �� $ btnClose��6D   $	����61   $��72��6V   8�� ��5h   -   �� $ CornerRadius� �� *TemplatedParent+8  5j   .   5k   '   5l   #   5m      �� 5n      $��1��6%   #��z��5p   !   $	��Top=�5q   !   $
��Auto��66   ��5n   2   �� *BorderThickness+8  ._�5r   "   �� .u�5s   &   �� 5t   #   5u      5v      5w      5x      5z      5{      5}      