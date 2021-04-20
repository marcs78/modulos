#enconding: UTF-8
#language: pt

@comprar
Funcionalidade: Comprar
    Contexto: Comprar produto
        @compra
        Cenário: Compra
            Dado que esteja acessado a pagina categoria "<categoria>"
            Quando encontrar o produto desejado
            E selecionar para compra
            Então o produto será adicionado no carrinho
            
        @compraexception
        Esquema do Cenário: Compra Exception
            Dado que esteja acessado a pagina categoria "<categoria>"
            Quando encontrar o produto desejado 
            E ele não estiver em estoque
            Então a mensagem "<mensagem>" de aviso  deverá ser exibida

        Exemplos:
        | categoria | mensagem        |
        | fonte     | fora de estoque |
        | teclados  |
        | telas     | 
