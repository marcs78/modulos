#language : pt
@autenticacao
Funcionalidade: Autenticação
    
    @gerar_token
    Esquema do Cenário: Gerar token
        Quando executar o POST /auth/oauth/token com o <status>
        Então deverá exibir o <retorno>

        Exemplos: 
            |  status |                 retorno                 |
            |   200   | Success: Everything worked as expected. |
    
    @gerar_token_exception
    Esquema do Cenário: Gerar token exception
        Quando executar o POST /auth/oauth/token com o <status>
        Então deverá exibir o <erro>

        Exemplos: 
            | status |                               erro                                   |
            |   400  | Bad Request: The request was unacceptable due to wrong parameter(s). |
            |   401  | Unauthorized: Invalid access_token used.                             |
            |   402  | Request Failed.                                                      |
            |   500  | Server Error: Something went wrong on our end.                       |
 
