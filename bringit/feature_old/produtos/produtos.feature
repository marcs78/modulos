#enconding: UTF-8
#language: pt

@cadastro
Funcionalidade: Produtos
    Contexto: Página dos Produtos
        @página
        Cenário: Página
            Dado que esteja na página de uma das categorias "<categoria>"
            Então assim conseguirá visualizar todos os produtos daquela categoria.

        Exemplos:
        | categoria |
        | baterias  |
        | telas     |
        | teclados  |