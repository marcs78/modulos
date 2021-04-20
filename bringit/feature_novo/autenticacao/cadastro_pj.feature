#enconding: UTF-8
#language: pt

@autenticacao
Funcionalidade: Autenticação

    Contexto: Cadastro PJ
        Dado que esteja na pagína de cadastro
        Quando selecionar a opção Pessoa Jurídica

        @cadastro_pj
        Cenário: Cadastro PJ
            E inserir os dados
            Então o cadastro será criado

        @cadastro_pj_exception
        Esquema do Cenário: Cadastro PJ Exception
            E inserir os dados de forma errada "<tipo_erro>"
            Então o cadastro não será criado e o "<aviso>" será exibido no campo que estiver errado

            Exemplos:
                | tipo_erro            | aviso                                                                                                                    | 
                | CPNJ                 | CPF/CNPJ inválido ou já registrado                                                                                       |
                | Razão Social         | Esté é um campo obrigátorio                                                                                              |          
                | Nome Fantasia        | Esté é um campo obrigátorio                                                                                              |
                | Responsável          | Esté é um campo obrigátorio                                                                                              |
                | Telefone             | Esté é um campo obrigátorio                                                                                              |
                | E-mail               | Esté é um campo obrigátorio                                                                                              |
                | Confirmar E-mail     | Esté é um campo obrigátorio / Digite novamente o mesmo valor                                                             |                                                                                      |
                | Senha                | Comprimento mínimo deste campo deve ser igual ou maior que 8 caracteres. Espaços a esquerda e a direita serão ignorados. |
                | Confirmar Senha      | Esté é um campo obrigátorio / Digite novamente o mesmo valor                                                             |
