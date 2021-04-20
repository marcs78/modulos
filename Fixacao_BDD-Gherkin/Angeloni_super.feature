#language: pt

Funcionalidade: Listagem
    Cenário: Selecionar o produto do primeiro departamento
        Dado que esteja na home
        Quando selecionar o primeiro departamento
        E abrir a página do primeiro produto
        Então deverá aparecer na tela as informações do produto
