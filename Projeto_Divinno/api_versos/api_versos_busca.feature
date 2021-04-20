#language : pt
@versos
Funcionalidade: Versos
    
    @buscar_um_verso_do_capitulo
    Esquema do Cenário: Buscar um verso do capitulo 
        Quando executar o GET /api/v1/chapters/<capitulo>/verses/<verso> com o <status>
        Então deverá exibir o <retorno>

        Exemplos: 
            | capitulo | verso |  status |                 retorno                 |
            |     1    |   2   |   200   | Success: Everything worked as expected. |
            |     2    |   1   |   200   | Success: Everything worked as expected. |
            |     3    |   3   |   200   | Success: Everything worked as expected. |
    
    @buscar_um_verso_do_capitulo_exception
    Esquema do Cenário: Buscar um verso do capitulo exception
        Quando executar o GET /api/v1/chapters/<capitulo>/verses/<verso> com o <status>
        Então deverá exibir o <erro>

        Exemplos: 
            | capitulo |  verso | status |                              erro                                    |
            |    1     |   a    |   400  | Bad Request: The request was unacceptable due to wrong parameter(s). |
            |    1     |   3    |   401  | Unauthorized: Invalid access_token used.                             |
            |    1     |   5    |   402  | Request Failed.                                                      |
            |    1     |   4    |   500  | Server Error: Something went wrong on our end.                       |
            |    2     |   a    |   400  | Bad Request: The request was unacceptable due to wrong parameter(s). |
            |    2     |   1    |   401  | Unauthorized: Invalid access_token used.                             |
            |    2     |   4    |   402  | Request Failed.                                                      |
            |    2     |   5    |   500  | Server Error: Something went wrong on our end.                       |
            |    3     |   a    |   400  | Bad Request: The request was unacceptable due to wrong parameter(s). |
            |    3     |   3    |   401  | Unauthorized: Invalid access_token used.                             |
            |    3     |   7    |   402  | Request Failed.                                                      |
            |    3     |   2    |   500  | Server Error: Something went wrong on our end.                       |
