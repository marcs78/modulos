#enconding: UTF-8
#language: pt

@compra
Funcionalidade: Informações da Compra
    Contexto: Resumo da Compra
        @compra
        Cenário: Compra
            Dado que tenha finalizado a compra
            Então poderá verificar as informações "<informações>" nessa pagína

        Exemplos:
        | informações           |
        | numero do pedido      |
        | data e hora da compra |
        | forma de pagamento    | 