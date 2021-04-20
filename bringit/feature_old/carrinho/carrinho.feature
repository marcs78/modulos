#enconding: UTF-8
#language: pt

@carrinho
Funcionalidade: Carrinho
    Contexto: Utilizar Carrinho
        @carrinho
        Cenário: carrinho
            Dado que esteja na página do carrinho
            E verificar todas as informações "<informações>" exibidas na tela
            Então se tiverem tudo de acordo poderá continuar com o pedido

        Exemplos:
        | informações |
        | produto     |
        | preço       |
        | quantidade  |
        | subtotal    |
        | frete       |