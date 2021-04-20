#enconding: UTF-8
#language: pt

@comprar
Funcionalidade: Compra

    Contexto: Comprar produto
        Dado que esteja na pagina categoria "<categorias>"
        Quando encontrar o produto desejado 

            Exemplos:
                | categorias |
                | fonte      |
                | teclados   |
                | telas      |

        @compra
        Cenário: Compra
            E selecionar para compra
            Então o produto será adicionado no carrinho
            
        @compraexception
        Esquema do Cenário: Compra Exception
            E se o produto não estiver em estoque
            Então a mensagem "<mensagem>" de aviso deverá ser exibida

            Exemplos:
                | mensagem        |
                | fora de estoque |
        
        