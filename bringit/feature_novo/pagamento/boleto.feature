#enconding: UTF-8
#language: pt

@pagamento
Funcionalidade: Pagamento

        @pagamento_boleto
        Cenário: Pagamento Boleto
            Dado que esteja na página de pagamento
            Quando selecionar a opção boleto
            E finalizar a compra
            Então o boleto será criado

   