#language : pt
Funcionalidade: Favoritos
    Cenário: Adicionar produto aos favoritos
        Dado que esteja logado com usuário "<user>" e senha "<pass>"
        Quando selecionar produto
        E adicionar produto aos favoritos
        Então o produto deverá estar na lista de favoritos
