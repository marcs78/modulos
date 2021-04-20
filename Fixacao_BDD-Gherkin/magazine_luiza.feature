#language : pt
Funcionalidade: Carrinho
    Cenário: Adicionar produto ao carrinho pela busca
        Dado que esteja na home
        Quando pesquisar no buscador "<computador>"
        E selecionar o primeiro produto
        E adicionar produto ao carrinho
        Então o produto deverá ser adicionado ao carrinho
    
            Exemplos:
                | busca      |
                | computador |
