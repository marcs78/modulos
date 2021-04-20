#enconding: UTF-8
#language: pt

@cadastro
Funcionalidade: Cadastro
    Contexto: Criação do cadastro
        @cadastro_PF
        Cenário: Cadastro PF
            Dado que esteja na tela de criação de cadastro
            Quando realizar um cadastro
            Então o cadastro será criado

        @cadastro_PF_exception
        Esquema do Cenário: Cadastro PF Exception
            Dado que esteja na tela de criação de cadastro
            Quando realizar um cadastro com erro "<tipo_erro>"
            Então o cadastro não será criado e o "<aviso>" de erro irá aparecer nos dados que estiveram errado

        Exemplos:
        | tipo_erro        | aviso                                                                                                                    |
        | CPF inválido     | CPF/CNPJ inválido ou já registrado                                                                                       |
        | Nome             | Esté é um campo obrigátorio                                                                                              |
        | Sobrenome        | Esté é um campo obrigátorio                                                                                              |
        | Telefone         | Esté é um campo obrigátorio                                                                                              |
        | E-mail           | Esté é um campo obrigátorio                                                                                              |
        | Confirmar E-mail | Esté é um campo obrigátorio                                                                                              |
        | Senha            | Comprimento mínimo deste campo deve ser igual ou maior que 8 caracteres. Espaços a esquerda e a direita serão ignorados. |
        | Confirmar Senha  | Esté é um campo obrigátorio / Digite novamente o mesmo valor                                                             |