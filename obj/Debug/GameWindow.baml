   M S B A M L   `   `   `  ����B  >Reversi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:ReversiReversi  5   	       Reversi.GameWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Reversi     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$ 
ToolWindow=�5	   	    � Title$ 
GameWindow��5
   	   $	��450��6   $	��800��6)   ���	#FF3B6439.��5      � .+�5   
   � -   5         �Name$
 grid��5      $��255,40,25,40q�6   ���	#FF008318 � ShowGridLines .  � RowDefinitions 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      5!      �� 5"   
   -   5         ��Name$
 turn��5"      $
��Left=�6"   $��	25,40,0,0q�6=   $
��Wrap=�6P   $��	TextBlock��6d   $	��Top=�6u   $��18(�6�   $
��Bold"�6�   �� 5#   
   -   5        $ score��5#      $
��Left=�6#   $��	25,97,0,0q�6>   $
��Wrap=�6Q   $��	TextBlock��6e   $	��Top=�6v   $��18(�6�   $
��Bold"�6�   �� 5$   
   -   5        $ timer_B��5$      $
��Left=�6%   $��109,216,0,0q�6@   $
��Wrap=�6U   $��	TextBlock��6i   $	��Top=�6z   $��18(�6�   $
��Bold"�6�   �� 5%   
   -   5        $ 
text_black��5%      $��
25,187,0,0q�6(   $
��Wrap=�6<   $��	TextBlock��6P   $	��Top=�6a   $��18(�6y   $
��Bold"�6�   �� 5&   
   -   5        $ 
text_white��5&      $��
25,276,0,0q�6)   $
��Wrap=�6=   $��	TextBlock��6Q   $	��Top=�6b   $��18(�6z   $
��Bold"�6�   �� 5'   
   -   5        $ timer_W��5'      $
��Left=�6%   $��109,305,0,0q�6@   $
��Wrap=�6U   $��	TextBlock��6i   $	��Top=�6z   $��18(�6�   $
��Bold"�6�   5)      5*      