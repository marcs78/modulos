#language : pt
@versos
Funcionalidade: Versos
    
    @buscar_todos_os_versos
    Esquema do Cenário: Buscar todos os versos
        Quando executar o GET /api/v1/verses com o <status>
        Então deverá exibir o <retorno>

        Exemplos: 
            | status |                 retorno                 |
            |   200  | Success: Everything worked as expected. |
    
    @buscar_todos_os_versos_exception
    Esquema do Cenário: Buscar todos os versos exception
        Quando executar o GET /api/v1/verses com o <status>
        Então deverá exibir o <erro>

        Exemplos:  
            | status |                                 erro                                 |
            |   400  | Bad Request: The request was unacceptable due to wrong parameter(s). |
            |   401  | Unauthorized: Invalid access_token used.                             |
            |   402  | Request Failed.                                                      |
            |   500  | Server Error: Something went wrong on our end.                       |
            