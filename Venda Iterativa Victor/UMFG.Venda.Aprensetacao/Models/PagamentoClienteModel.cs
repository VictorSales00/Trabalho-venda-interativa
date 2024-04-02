using System;
using System.ComponentModel.DataAnnotations;

namespace UMFG.Venda.Aprensetacao.Models
{
	public class PagamentoClienteModel
	{
		[Required(ErrorMessage = "O nome do cliente e obrigatorio.")]
		public string Nome { get; set; }

		[Required(ErrorMessage = "O numero do cartao e obrigatorio.")]
		[CreditCard(ErrorMessage = "O numero do cartao e invalido.")]
		public string NumeroCartao { get; set; }

		[Required(ErrorMessage = "A data de vencimento e obrigatoria.")]
		[RegularExpression(@"^(0[1-9]|1[0-2])\/((20)\d{2})$", ErrorMessage = "Formato de data invalido. Utilize mm/yyyy.")]
		public string DataVencimento { get; set; }

		[Required(ErrorMessage = "O CVV e obrigaterio.")]
		[RegularExpression(@"^\d{3}$", ErrorMessage = "O CVV deve conter 3 dagitos.")]
		public string CVV { get; set; }
	}
}
