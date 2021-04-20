#enconding: UTF-8
#language: pt

@login
Funcionalidade: login
    Contexto: Entrar com o login
        @login
        Cenário: Login
            Dado que esteja na home
            Quando encontrar a "<mensagem>" de acesso ao login
            E selecionar a opção entrar
            E deverá ser redirecionado a pagina de login
            E colocar as informações solicitadas
            Então o login será feito com sucesso
            
        Exemplos:
        | mensagem            |
        | Olá! Faça seu login |
                             

            
        @loginexception
        Esquema do Cenário: Login Exception
            Dado que esteja na home
            Quando encontrar a mensagem "<mensagem>" de acesso ao login
            E selecionar a opção entrar
            E deverá ser redirecionado a pagina de login
            E se realizar o login com erro "<tipo_erro>" aparecerá um aviso "<aviso>"
            Então login não será feito

        Exemplos:
        | mensagem            | tipo_erro             | aviso                                                                                            |
        | Olá! Faça seu login | E-mail/ CPF / CNPJ    | Entre com um e-mail, CPF ou CNPJ válido                                                          |
                              | Senha                 | Você digitou seu e-mail e/ou senha incorretos. Por favor, verifique seu login e tente novamente. |
        
        @login
        Cenário: Login com facebook/google
            Dado que esteja na home
            Quando encontrar a "<mensagem>" de acesso ao login
            E escolher entrar pelo facebook/google
            Então o login será feito com sucesso
        
        Exemplos:
        | mensagem           |
        | Olá! Faça seu login|
                             
