using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using UMFG.Venda.Aprensetacao.Interfaces;
using UMFG.Venda.Aprensetacao.Models;
using UMFG.Venda.Aprensetacao.ViewModels;

namespace UMFG.Venda.Aprensetacao.UserControls
{
    /// <summary>
    /// Interação lógica para ucReceber.xam
    /// </summary>
    public partial class ucReceber : UserControl
    {
        private ucReceber(IObserver observer, PedidoModel pedido, string titulo)
        {
            InitializeComponent();

            DataContext = new ReceberViewModel(this, observer, pedido, titulo);
        }

        internal static PedidoModel Exibir (IObserver observer,
            PedidoModel pedido)
        {
            var tela = new ucReceber(observer, pedido, "Receber");

            var vm = tela.DataContext as ReceberViewModel;

            if (vm.PedidoTemItens) // Verifica se o pedido tem itens antes de exibir a tela
            {
                vm.Notify();
                return vm.Pedido;
            }
            else
            {
                MessageBox.Show("O pedido não possui itens adicionados.");
                return new PedidoModel();
            }
        }
        private void ReceberButton_Click(object sender, RoutedEventArgs e)
        {
            if (DataContext is ReceberViewModel receberViewModel)
            {
                receberViewModel.ReceberPedido();
            }
        }
    }
}
