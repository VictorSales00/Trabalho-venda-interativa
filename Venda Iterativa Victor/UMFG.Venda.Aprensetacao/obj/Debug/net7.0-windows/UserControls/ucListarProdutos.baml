   M S B A M L   `   `   `  ����R  NUMFG.Venda.Aprensetacao, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:UMFG.Venda.Aprensetacao.UserControls$UMFG.Venda.Aprensetacao.UserControls  5      ;    5UMFG.Venda.Aprensetacao.UserControls.ucListarProdutos   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Dlocal2clr-namespace:UMFG.Venda.Aprensetacao.UserControls     5      .��5      � ���#ecf0f1  � RowDefinitions  5   
   �� 5      $��* �6   �� 5      $��50 �6   .+�5   
   � $��0��6   .+�5      �� $��10q�6   .��5      ��  �� SelectionMode$ Single=�5      ��5      �� *
Produtos+ �� SelectedItem 5      �� *ProdutoSelecionado+ � 	Resources 5       �� 
TargetType �� Property �� Value �� Triggers P� Property	 P� Value��%
  '��       '�� �     �� 5      " ��6    .�5      ��  � ��$ 0q�6@   �� 5       � �� �#ecf0f16<   �� 5       � �� �#ecf0f16;   5      �� 5      " ��6    .�5      ��  � ��$ 0q�6@   �� 5        � �� �#ecf0f16<   �� 5!       � �� �#ecf0f16;   �� 5"       � ��
 �   �6;    5#      P� 5$   "    �@��
IsSelected$
	 True��6@   . �5%   &   ��  � ��
 �����6C   �� 5&   &    � �� �#e0e0e06C   5'   #   5*      5,      ��5.      �� 5/      .R�50      �� $	��210��6%   $	��495��61   ._�51   "   �� .+�52   &   �� $	��200��6-   $	��200��69   
 �� CornerRadius$
 5��53   -   $��5q�6>    J� Effect 54   *   3  -System.Windows.Media.Effects.DropShadowEffect  55   .      ShadowDepth$ 1Q�6?   ��58   *   �� 59   .    �� ImageSource 69   �� *Imagem+5;   '   �� 5=   &   $��5q�60   $��17(�6W   ��6;   �� *
Referencia+6W   �� 5?   &    �� Orientation$ 
Horizontal=�61   .+�5@   *   �� $	��5 0q�64   $��R$��6B   $��15(�6L   �� 5A   *   $��15(�6K   ��64   �� *Preco+6K   5B   '   �� 5D   &   $��15 30 30 30q�5E   1   $
��Wrap=�5F   1   $��12(�5G   1   $��Center=�5H   1   $	��200��5I   1   $	��190��6=   ��5D   0   �� *	Descricao+5I   =   5J   #   5K      5L      ��5O      �� 5P      .R�5Q      � 5R      5U      5V      5W      � 5Y   
   $��1��6   .+�5Z      �� $ 
Horizontal=�6   $
��Left=�5[      $��Center=�5\      .+�5^      ��  "  MaterialDesignFlatAccentButton#���   6   $��
_Adicionar��5a      
���   ���5_      �� ��5`      �� *	Adicionar+ �� UpdateSourceTrigger$ PropertyChanged=�5b      �� 5d      #���   6   $��_Remover��5g      
���   ���5e      �� ��5f      �� *	Remover+$ PropertyChanged=�5h      5j      �� 5l      $ 
Horizontal=�6   $��Right=�5m      $��Center=�5n      .+�5p      �� $��
Subtotal: ��6   $��0 10 0 0q�6.   $��16(�6@   �� 5q      $	��R$ ��6   $��SemiBold"�6'   $��	10 10 0 0q�6=   $��16(�6P   �� 5r      $��SemiBold"�6:   $��	10 10 0 0q�6P   $��16(�6c   ��6   �� *Pedido.Total+6c   �� 5s      #���   6   $��_Receber��5v      
���   �$��0 5 0 0q�5x      ��5t      �� ��5u      �� *	Receber+$ PropertyChanged=�{�5y      �� *PedidoTemItens+5|      5}      5~      5�      