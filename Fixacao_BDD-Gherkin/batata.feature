#language: pt

Funcionalidade: Buscador
    Cenario: Buscar imagem pelo "Google"
        Dado que esteja na home
        Quando realizar a busca "<busca>"
        E ir na aba imagens
        E selecionar a primeira imagem
        Então deverá ser exibida a imagem com suas informações
        
        Exemplos:
            | busca  |
            | batata |
            | Google |
