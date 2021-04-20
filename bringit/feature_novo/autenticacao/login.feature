#enconding: UTF-8
#language: pt

@autenticacao
Funcionalidade: Autenticação

    Contexto: Realizar Login
        Dado que esteja na home
        Quando ir na "<mensagem>" de acesso ao login
        E selecionar a opção entrar

            Exemplos:
                | mensagem            |
                | Olá! Faça seu login |

        @login
        Cenário: Login
            E colocar as informações de login
            Então o login será feito com sucesso
 
        @loginexception
        Esquema do Cenário: Login Exception
            E colocar as informações de acesso de forma errada "<tipo_erro>" aparecerá um aviso "<aviso>"
            Então o login não será feito

            Exemplos:
                | tipo_erro             | aviso                                                                                            |
                | E-mail/ CPF / CNPJ    | Entre com um e-mail, CPF ou CNPJ válido                                                          |
                | Senha                 | Você digitou seu e-mail e/ou senha incorretos. Por favor, verifique seu login e tente novamente. |
        
        @login
        Cenário: Login com facebook/google
            E selecionar facebook ou google
            Então o login será feito com sucesso
        
            Exemplos:
                | mensagem            |
                | Olá! Faça seu login |
                             
