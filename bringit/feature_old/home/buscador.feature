#enconding: UTF-8
#language: pt

@cadastro
Funcionalidade: Buscador
    Contexto: Buscar produto
        @busca
        Cenário: busca
            Dado que esteja na home
            Quando usar o buscador
            Então aparecerá o resultado da busca

        @buscae_xception
        Esquema do Cenário: busca Exception
            Dado que esteja na home
            Quando usar o buscador
            E inserir algum nome "<tipo>" que não é um produto cadastrado
            Então aparecerá uma mensagem "<mensagem>" no buscador

        Exemplos:
        | nome    | mensagem                        |
        | batata  | A busca não retornou resultados |
        | joão    | A busca não retornou resultados |
        | bisturi | A busca não retornou resultados |