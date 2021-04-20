#enconding: UTF-8
#language: pt

@categorias
Funcionalidade: Categorias

        @categorias
        Cenário: Categorias
            Dado que esteja na home
            Quando encontrar a categoria "<categorias>" desejada 
            E selecionar a categoria "<categorias>"
            Então a pagina da categoria "<categorias>" será exibida

            Exemplos:
                | categorias  |
                | baterias    |
                | teclados    |
                | fontes      |   
                | telas       |