#enconding: UTF-8
#language: pt

@pagamento
Funcionalidade: Carrinho
    Contexto: Tela de Pagamento
        @pagamento
        Cenário: Pagamento
            Dado que esteja na página de pagamento
            Quando verificar todas as informações "<informações>" 
            E inserir dados de pagamento "<pagamento>"
            Então poderá finalizar o pedido

        Exemplos:
        | informações             | Pagamento         |
        | Endereço de Entrega     | Boleto            |
        | Forma de Envio          | Débito em Conta   |
        | Pagamento               | Cartão de Crédito |
        | Resumo do Pedido        |