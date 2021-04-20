#enconding: UTF-8
#language: pt

@cadastro
Funcionalidade: Informações Extras
    Contexto: Acesso as Informações Importantes
        @Informacoes
        Cenário: informações
            Dado que esteja na home
            E ir nos links do rodapé "<tipo>"
            E escolher e selecionar uma das "<opções>"
            Então entrará na pagina escolhida

        Exemplos:
        | opções                 | tipo                            |
        | sobre a bringIT        | institucional                   |
        | central de atendimento | atendimento                     |
        | dúvidas frequentes     | dúvidas                         |

        @informacoes_exception
        Esquema do Cenário: Informações Exception
            Dado que esteja na home
            E ir nos campos institucional/atendimento/dúvidas 
            E escolher e selecionar uma das "<opções>"
            E a pagina da opção não for carregada
            Então o erro http "mensagem" deverá ser exibida

        Exemplos:
        | opções                 | mensagem                        |
        | sobre a bringIT        | pagina não pode ser exibida     |
        | central de atendimento |
        | dúvidas frequentes     |


        * Verificar mais tarde com o Paulo