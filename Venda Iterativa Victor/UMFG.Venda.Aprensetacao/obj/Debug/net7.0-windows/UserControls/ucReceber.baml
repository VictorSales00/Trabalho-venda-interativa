   M S B A M L   `   `   `  ����R  NUMFG.Venda.Aprensetacao, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:UMFG.Venda.Aprensetacao.UserControls$UMFG.Venda.Aprensetacao.UserControls  5      4    .UMFG.Venda.Aprensetacao.UserControls.ucReceber   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Dlocal2clr-namespace:UMFG.Venda.Aprensetacao.UserControls     5      .��5      � ���#ECF0F1  � RowDefinitions  5   
   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $��50 �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $	��500��6   $	��500��6.   .+�5   
   �� $��1��6   $��0��6"    �� Orientation$ 
Horizontal=�62   $��	5 85 0 10q�5      .+�5      &   System.Windows.Controls.DataGrid     HeadersVisibility$
 None=�5         AutoGenerateColumns$ False��5      $��Stretch=�5      $��Stretch=�5         GridLinesVisibility$
 None=�5         CanUserAddRows$ False��5      ��5      �� *Pedido.Produtos+ � 	Resources 5!       �� 
TargetType	 �� Property
 �� Value*  $System.Windows.Controls.DataGridCell �� Triggers P� Property P� Value��%�  '        '  G     �� 5"      "  6   .�5#      �� 	 � ��$
 0q�6<   5%      �� 5'      "  6   .�5(      �� 	 � ��$
 0q�6<   �� 5)      	 � ��
 �#ECF0F168   �� 5*      	 � ��
 �#ECF0F167   �� 5+      	 � ��

 �   �67    5-      P� 5.       �@ 
IsSelected$
 True��6<   . �5/   "   �� 	 � ��
 �#E0E0E06@   �� 50   "   	 � ��
 �#E0E0E06?   �� 51   "   	 � ��

 �����6?   53      55      56         Columns 58      4  .System.Windows.Controls.DataGridTemplateColumn  59      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$	 115 6-      CellTemplate 5:      �� 5;      .R�5<   "   A� $��80��6*   $��80��66   $��Center=�6A   ��5=   &   �� 5>   *    �� ImageSource 65   �� *Imagem+5@   #   5A      5C        5E      $	 600 6-    5F      �� 5G      .R�5H   "   �� .+�5I   &   �� $��SemiBold"�5J   0   $��16(�5K   0   $��	15 30 0 0q�5L   0   $��Center=�5M   0   ��5I   0   �� *
Referencia+5M   0   �� 5O   &   $��Light"�5P   0   ���#909090$��11(�5R   0   $��15 5 0 0q�5S   0   $��Center=�5T   0   $
��Wrap=�5U   0   ��5O   0   �� *	Descricao+5U   0   5W   #   5X      5Z        5\      $	 115 6-    5]      �� 5^      .R�5_   "   �� .+�5`   &   �� $��R$��60   $��SemiBold"�5a   0   $��16(�5b   0   $��15 0 0 0q�5c   0   $��Center=�5d   0   �� 5f   &   $��SemiBold"�5g   0   $��16(�5i   0   $��5 0 0 0q�5j   0   $��Center=�5k   0   $
��Wrap=�5l   0   ��5f   0   �� *Preco+5l   0   5n   #   5o      5q      5t      5u      �� 5v      $��1��6   $��1��6   $ Vertical=�6,   $��10q�5w      .+�5x      �� $��Recebimento do Cliente��6   $
��Bold"�5y   	   $��16(�5z   	   $��0 0 0 10q�5{   	   	� 5}      $��Cartão de Crédito��6   $��0 0 0 5q�6e    d� 	IsChecked 6-   ��  �� Path$ IsCartaoCredito� �� Mode$ TwoWay=�6e   	� 5~      $��Cartão de Débito��6   $��0 0 0 5q�6c    6,   �� $ IsCartaoDebito�$ TwoWay=�6c   �� 5�      $ 
Horizontal=�6   $��0 0 0 5q�6)   .+�5�      �� $��Nome: ��6   $��0 0 5 0q�6   �� 5�      $	��200��6   ��6   �� *NomeCliente+$ TwoWay=�5�      �� 5�      $ 
Horizontal=�6   $��0 0 0 5q�6)   .+�5�      �� $��Número do Cartão: ��6   $��0 0 5 0q�6*   �� 5�      $	��200��6   ��6   �� *NumeroCartao+$ TwoWay=�5�      �� 5�      $ 
Horizontal=�6   $��0 0 0 5q�6)   .+�5�      �� $"��Data de Vencimento (MM/yy): ��6   $��0 0 5 0q�64   �� 5�      $ 
Horizontal=�6   .+�5�      �� $��20��6    �� 	MaxLength$ 2��6   ��6(   �� *MesVencimento+$ TwoWay=��� 5�      $��/��6   $	��5 0q�6   �� 5�      $��20��6   $ 2��6   ��6(   �� *AnoVencimento+$ TwoWay=�5�      5�      �� 5�      $ 
Horizontal=�6   $��0 0 0 5q�6)   .+�5�      �� $��CVV (3 dígitos): ��6   $��0 0 5 0q�6)   �� 5�      $ 
Horizontal=�6   .+�5�      �� $��20��6   $ 3��6   ��6(   �� *CVV+$ TwoWay=�5�      5�      5�      �� 5�      -   5        $��2��5�      $��1��6   $��Receber��6(   $��Right=�5�   	   $��	0 0 10 10q�6%   5�   	   5�      5�      