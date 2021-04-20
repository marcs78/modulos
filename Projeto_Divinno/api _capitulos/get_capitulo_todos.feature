#language : pt
@capitulos
Funcionalidade: Capitulos
    
    @buscar_todos_capitulos
    Esquema do Cenário: Buscar todos os capitulos
        Quando executar o GET /api/v1/chapters com o <status>
        Então deverá exibir o <retorno>

        Exemplos: 
            | status |                 retorno                 |
            |  200   | Success: Everything worked as expected. |
    
    @buscar_todos_capitulos_exception
    Esquema do Cenário: Buscar todos os capitulos Exception
        Quando executar o GET /api/v1/chapters com o <status>
        Então deverá exibir o <erro>

        Exemplos: 
            | status |                                  erro                                |
            |   400  | Bad Request: The request was unacceptable due to wrong parameter(s). |
            |   401  | Unauthorized: Invalid access_token used.                             |
            |   402  | Request Failed.                                                      |
            |   500  | Server Error: Something went wrong on our end.                       |
