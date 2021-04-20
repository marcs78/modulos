#enconding: UTF-8
#language: pt

@autenticacao
Funcionalidade: Autenticaçâo
    
    Contexto: 
        Dado que esteja na pagína de cadastro
        Quando selecionar a opção Pessoa Física

        @cadastro_pf
        Cenário: Cadastro PF
            E inserir os dados
            Então o cadastro deverá ser criado

        @cadastro_pf_exception
        Esquema do Cenário: Cadastro PF Exception
            E inserir os dados de forma errada "<tipo_erro>"
            Então o cadastro não será criado e o "<aviso>" será exibido no campo que estiver errado

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