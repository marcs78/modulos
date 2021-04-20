#enconding: UTF-8
#language: pt

@busca
Funcionalidade: Busca

    Contexto: Busca
        Dado que esteja na home
        Quando usar o buscador

        @busca
        Cenário: Busca
            E inserir dados
            Então aparecerá o resultado da busca

        @busca_exception
        Esquema do Cenário: Busca Exception
            E inserir algum dado "<tipo>" que não é um produto cadastrado
            Então aparecerá uma mensagem "<mensagem>" no buscador

            Exemplos:
                | nome    | mensagem                        |
                | batata  | A busca não retornou resultados |
                | joão    | A busca não retornou resultados |
                | bisturi | A busca não retornou resultados |