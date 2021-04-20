#enconding: UTF-8
#language: pt

@pagamento
Funcionalidade: Pagamento       
    Contexto: Página de Pagamento
        Dado que esteja na página de pagamento
        Quando selecionar a opção cartão de credito

        @selecionar_cartao
        Cenário: Selecionar cartão
            E selecionar o primeiro cartão cadastrado
            E inserir o codigo de segurança
            E escolher as parcelas
            Então poderá finalizar a compra    

        @novo_cartao
        Cenário: Novo Cartão
            E escolher a opção outros cartões
            E inserir os dados do novo cartão
            Então poderá finalizar a compra




