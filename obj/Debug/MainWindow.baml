   M S B A M L   `   `   `  ����B  >Reversi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:ReversiReversi  5   	       Reversi.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Reversi     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   ���	#FF3B6439.��5      � .+�5   
   �� -   5        $��Computer VS Human��5      
 � Tag$ vs_cmp��6-   $
��Left=�6:   $��	36,37,0,0q�6U   $	��Top=�6h   $	��120��6�   $��31��6�   6�   �� 5   
   -   5        $��Human VS Human��5      $
��Left=�6*   $��	36,90,0,0q�6E   $	��Top=�6X   $	��120��6p   $��32��6|   6�   �� 5   
   -   5        $��LeaderBoard��5      $
��Left=�6'   $��
36,143,0,0q�6B   $	��Top=�6V   $	��120��6n   $��31��6z   6�   �� 5   
   -   5        $��	Exit Game��5      $
��Left=�6%   $��629,364,0,0q�6@   $	��Top=�6U   $	��120��6m   $��30��6y   6�   �� 5   
   -   5         ��Name$ player1_box��5      $
��Left=�6(   $��29��6C   $��
288,54,0,0q�6O    �� TextWrapping$
 Wrap=�6c   $	��Top=�6x   $	��237��6�   $y�Hidden=�6�   �� 5   
   -   5        $ player2_box��5      $
��Left=�6)   $��29��6D   $��288,129,0,0q�6P   $
 Wrap=�6e   $	��Top=�6z   $	��237��6�   $y�Hidden=�6�   �� 5   
   -   5         ��Name$ playBTN��5      $
��PLAY��6"   $
��Left=�61   $��
36,351,0,0q�6L   $	��Top=�6`   $	��120��6x   $��43��6�   $y�Hidden=�6�   �� 5   
   -   5         ��Name$ player2��5      $��288,98,-263,0q�6&   $
��Wrap=�6=   $	��Top=�6Q   $��18(�6i   $
��Bold"�6w   $y�Hidden=�6�   $��Second Player: ��6�   �� 5   
   -	   5        $ player1��5      $��288,18,-263,0q�6&   $
��Wrap=�6=   $	��Top=�6Q   $��18(�6i   $
��Bold"�6w   $y�Hidden=�6�   $��First Player: ��6�   5      5      