#enconding: UTF-8
#language: pt

@categorias
Funcionalidade: Categorias
    Contexto: Acessar Categoria
        @categoria
        Cenário: Categoria
            Dado que esteja na home
            Quando encontrar a categoria "<categoria>" desejada 
            E selecionar a categoria "<categoria>"
            Então a pagina da categoria "<categoria>" será exibida
            
        @categoriaexception
        Esquema do Cenário: Categoria Exception
            Dado que esteja na home
            Quando encontrar a categoria "<categoria>" desejada
            E selecionar a categoria "<categoria>"
            E a pagina da categoria "<categoria>" não for carregada
            Então a mensagem de erro http "mensagem" deverá ser exibida

        Exemplos:
        | categoria  | mensagem                    |
        | baterias   | pagina não pode ser exibida |
        | teclados   |
        | fontes     |   


        * Verificar mais tarde com o Paulo