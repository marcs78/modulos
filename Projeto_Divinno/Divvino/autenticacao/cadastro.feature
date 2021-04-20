#language : pt
@autenticacao
Funcionalidade: Autenticação


  Contexto: 
    Dado que esteja na página de cadastro
    

  @realizar_cadastro_pf
  Cenario: Realizar cadastro pf
    E que esteja na aba PF
    Quando finalizar o cadastro
    Então deverá exibir os dados cadastrados

  @realizar_cadastro_pf_exception
  Esquema do Cenário: Realizar cadastro pf exception
    E que esteja na aba PF
    Quando finalizar o cadastro com dados inválidos <tipo>
    Então deverá exibir o <erro>


    Exemplos:
      | tipo                            | erro                                                |
      | Campos obrigatórios             | Campo obrigatório                                   |
      | CPF inválido                    | CPF inválido                                        |
      | CPF existente                   | Já existe um usuário cadastrado com o CPF informado |
      | Nome completo inválido          | Nome completo inválido                              |
      | Email  invalido                 | E-mail inválido                                     |
	    | Email existente                 | Já existe um usuário cadastrado com este e-mail     |
      | Confirmação do email invalido   | Confirmação de e-mail inválida.                     |
      | Senha curta           	        | A senha deve possuir no mínimo 6 caracteres         |
      | Senha diferente                 | senha e a confirmação de senha não conferem         |


  @realizar_cadastro_pj
  Cenário: Realizar cadastro de pj
    E que esteja na aba PJ
    Quando finalizar o cadastro 
    Então deverá exibir os dados cadastrados
    
  @realizar_cadastro_pj_exception
  Esquema do Cenário: realizar cadastro pf exception
    E que esteja na aba PJ
    Quando finalizar o cadastro com dados inválidos <tipo>
    Então deverá exibir o <erro>

    Exemplos:
      | tipo                          | erro                                                 |
      | Campos obrigatórios           | Campo obrigatório                                    |
      | CNPJ                          | CNPJ inválido                                        | 
      | CNPJ existente	              | Já existe um usuário cadastrado com o CNPJ informado |
      | Nome invalido                 | Nome do contato inválido                             | 
      | Email  invalido               | E-mail inválido                                      |
      | email existente               | Já existe um usuário cadastrado com este e-mail      |
      | Confirmação do email invalido | Confirmação de e-mail inválida.                      |
      | Senha curta                   | A senha deve possuir no mínimo 6 caracteres.         |
      | Senha diferente               | senha e a confirmação de senha não conferem. 	       |
