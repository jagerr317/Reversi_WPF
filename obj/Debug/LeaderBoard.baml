   M S B A M L   `   `   `  ����B  >Reversi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:ReversiReversi  5   	       Reversi.LeaderBoard   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Reversi     5   	     � Title$  LeaderBoard��5   	   $	��450��6   $	��800��6*   .��5
      � -   5         �Name$
 grid��5
      $��0,0,0,0q�6   
������� � ShowGridLines .  � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      .+�5   
   �� -   5         ��Name$
 name��5      $��53��6     �� TextWrapping$
 Wrap=�6,   $
��Name��6@   $��Center=�6L   $��30(�6g    �� TextAlignment$ Center=�6u   
��� � �6�   �� 5   
   -   5        $
 time��5      $��53��6    $
 Wrap=�6,   $
��Time��6@   $	��Top=�6L   $��1��6d   $��30(�6t   $ Center=�6�   
��� � �6�   �� 5   
   -   5        $ score��5      $��52��6!   $
 Wrap=�6-   $��
Best Score��6A   $	��Top=�6S   $��2��6k   $��30(�6{   $ Center=�6�   
��� � �6�   5       5!      