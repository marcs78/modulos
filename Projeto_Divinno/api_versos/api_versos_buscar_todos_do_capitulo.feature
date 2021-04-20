#language : pt
@versos
Funcionalidade: Versos
    
    @buscar_todos_os_versos_do_capitulo
    Esquema do Cenário: Buscar todos os versos do capitulo
        Quando executar o GET /api/v1/chapters/<capitulo>/verses com o <status>
        Então deverá exibir o <retorno>

        Exemplos: 
            | capitulo |  status |                 retorno                 |
            |     1    |   200   | Success: Everything worked as expected. |
            |     2    |   200   | Success: Everything worked as expected. |
            |     3    |   200   | Success: Everything worked as expected. |
    
    @buscar_todos_os_versos_do_capitulo_exception
    Esquema do Cenário: Buscar todos os versos do capitulo exception
        Quando executar o GET /api/v1/chapters/<capitulo>/verses com o <status>
        Então deverá exibir o <erro>

        Exemplos: 
            | capitulo | status |                                  erro                                |
            |    a     |   400  | Bad Request: The request was unacceptable due to wrong parameter(s). |
            |    1     |   401  | Unauthorized: Invalid access_token used.                             |
            |    1     |   402  | Request Failed.                                                      |
            |    1     |   500  | Server Error: Something went wrong on our end.                       |
            |    a     |   400  | Bad Request: The request was unacceptable due to wrong parameter(s). |
            |    2     |   401  | Unauthorized: Invalid access_token used.                             |
            |    2     |   402  | Request Failed.                                                      |
            |    2     |   500  | Server Error: Something went wrong on our end.                       |
            |    a     |   400  | Bad Request: The request was unacceptable due to wrong parameter(s). |
            |    3     |   401  | Unauthorized: Invalid access_token used.                             |
            |    3     |   402  | Request Failed.                                                      |
            |    3     |   500  | Server Error: Something went wrong on our end.                       |
