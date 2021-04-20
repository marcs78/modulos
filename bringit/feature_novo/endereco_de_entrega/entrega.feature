#enconding: UTF-8
#language: pt

@entrega
Funcionalidade: Entrega

    Contexto: Página de entrega
        Dado que esteja na página de entrega

        @selecionar_entrega
        Cenário: Selecionar endereço de entrega
            E que possua mais de um endereço cadastrado
            Quando selecionar o primeiro endereço de entrega
            Então o endereço de entrega deverá ser selecionado

        @selecionar_entrega_unico
        Cenário: Selecionar um único endereço de entrega
            E que possua apenas um endereço cadastrado
            Então o endereço de entrega deverá ser selecionado

        @editar_entrega
        Cenário: Editar endereço de entrega
            E que possua um endereço cadastrado
            Quando editar o endereço de entrega
            Então o endereço deverá ser editado

            