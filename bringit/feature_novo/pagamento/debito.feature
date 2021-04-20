#enconding: UTF-8
#language: pt

@pagamento
Funcionalidade: Pagamento

        @pagamento_boleto
        Cenário: Pagamento Débito
            Dado que esteja na página de pagamento
            Quando selecionar a opção Débito em conta
            E finalizar a compra
            Então deverá ir a tela do banco do brasil
            E realizar o pagamento

   