using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using UMFG.Venda.Aprensetacao.Classes;
using UMFG.Venda.Aprensetacao.Interfaces;
using UMFG.Venda.Aprensetacao.Models;
using System.Text.RegularExpressions;
using System.Windows.Input;

namespace UMFG.Venda.Aprensetacao.ViewModels
{
    internal sealed class ReceberViewModel : AbstractViewModel
    {
        private PedidoModel _pedido = new PedidoModel();

        private string _nomeCliente;
        public string NomeCliente
        {
            get => _nomeCliente;
            set
            {
                _nomeCliente = value;
                OnPropertyChanged(nameof(NomeCliente));
            }
        }

        private string _numeroCartao;
        public string NumeroCartao
        {
            get => _numeroCartao;
            set
            {
                _numeroCartao = value;
                OnPropertyChanged(nameof(NumeroCartao));
            }
        }

        private string _mesVencimento;
        public string MesVencimento
        {
            get => _mesVencimento;
            set
            {
                _mesVencimento = value;
                OnPropertyChanged(nameof(MesVencimento));
            }
        }

        private string _anoVencimento;
        public string AnoVencimento
        {
            get => _anoVencimento;
            set
            {
                _anoVencimento = value;
                OnPropertyChanged(nameof(AnoVencimento));
            }
        }

        private string _cvv;
        public string CVV
        {
            get => _cvv;
            set
            {
                _cvv = value;
                OnPropertyChanged(nameof(CVV));
            }
        }
        public bool IsCartaoDebito { get; set; }
        public bool IsCartaoCredito { get; set; }
        private bool ValidarCampos()
        {
            if (!IsCartaoCredito && !IsCartaoDebito)
            {
                MessageBox.Show("Por favor, selecione se é cartão de crédito ou débito.");
                return false;
            }

            if (string.IsNullOrWhiteSpace(NomeCliente))
            {
                MessageBox.Show("Por favor, insira o nome do cliente.");
                return false;
            }

            if (string.IsNullOrWhiteSpace(NumeroCartao))
            {
                MessageBox.Show("Por favor, insira o número do cartão.");
                return false;
            }

            // Verifica se o número do cartão contém apenas dígitos
            if (!Regex.IsMatch(NumeroCartao, @"^\d+$"))
            {
                MessageBox.Show("O número do cartão deve conter apenas números.");
                return false;
            }

            if (string.IsNullOrWhiteSpace(MesVencimento) || string.IsNullOrWhiteSpace(AnoVencimento))
            {
                MessageBox.Show("Por favor, insira a data de vencimento completa.");
                return false;
            }

            // Verifica se a data de vencimento é válida e não está vencida
            int mesVencimento;
            int anoVencimento;
            if (!int.TryParse(MesVencimento, out mesVencimento) || !int.TryParse(AnoVencimento, out anoVencimento))
            {
                MessageBox.Show("Por favor, insira uma data de vencimento válida.");
                return false;
            }

            int anoAtual = DateTime.Now.Year % 100; // Obtém os dois últimos dígitos do ano atual
            if (anoVencimento < anoAtual || (anoVencimento == anoAtual && mesVencimento < DateTime.Now.Month))
            {
                MessageBox.Show("O cartão está vencido. Por favor, insira um cartão válido.");
                return false;
            }

            if (string.IsNullOrWhiteSpace(CVV) || !Regex.IsMatch(CVV, @"^\d{3}$"))
            {
                MessageBox.Show("Por favor, insira um CVV válido com 3 dígitos.");
                return false;
            }

            

            return true;
        }




        public PedidoModel Pedido
        {
            get => _pedido;
            set
            {
                if (_pedido != value)
                {
                    _pedido = value;
                    PedidoTemItens = _pedido.Produtos.Any(); // Verifica se há itens no pedido e atualiza PedidoTemItens
                    OnPropertyChanged(nameof(Pedido));
                }
            }
        }
        private bool _pedidoTemItens;
        public bool PedidoTemItens
        {
            get { return _pedidoTemItens; }
            set
            {
                if (_pedidoTemItens != value)
                {
                    _pedidoTemItens = value;
                    OnPropertyChanged(nameof(PedidoTemItens));
                }
            }
        }

        public void ReceberPedido()
        {
            if (ValidarCampos())
            {
                MessageBox.Show("Pagamento concluído com sucesso!", "Sucesso", MessageBoxButton.OK, MessageBoxImage.Information);
                
            }
        }

        
        public void ReceberButton_Click()
        {
            ReceberPedido();
        }

        public ReceberViewModel(UserControl userControl,
            IObserver observer,
            PedidoModel pedido,
            string titulo) : base(titulo)
        {
            UserControl = userControl ?? throw new ArgumentNullException(nameof(userControl));
            MainUserControl = observer ?? throw new ArgumentNullException(nameof(observer));
            Pedido = pedido ?? throw new ArgumentNullException(nameof(pedido));

            Add(observer);

        }
    }
}