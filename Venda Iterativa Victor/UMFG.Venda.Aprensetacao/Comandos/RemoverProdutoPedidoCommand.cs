using System;
using System.Linq;
using System.Windows;
using UMFG.Venda.Aprensetacao.Classes;
using UMFG.Venda.Aprensetacao.ViewModels;

namespace UMFG.Venda.Aprensetacao.Comandos
{
	internal sealed class RemoverProdutoPedidoCommand : AbstractCommand
	{
		public override void Execute(object? parameter)
		{
			var vm = parameter as ListarProdutosViewModel;

			if (vm.ProdutoSelecionado == null)
			{
				MessageBox.Show("Selecione um produto para remover.");
				return;
			}

			if (!vm.Pedido.Produtos.Contains(vm.ProdutoSelecionado))
			{
				MessageBox.Show("O produto selecionado não está na lista de produtos do pedido.");
				return;
			}

			vm.Pedido.Produtos.Remove(vm.ProdutoSelecionado);
			vm.Pedido.Total = vm.Pedido.Produtos.Sum(x => x.Preco);
		}
	}
}
