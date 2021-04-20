#enconding: UTF-8
#language: pt

@pedidos
Funcionalidade: Pedidos
    
    @pedidos
    Cenário: Pedidos
        Dado que esteja na página dos meus pedidos
        E que possua um pedido realizado
        Então deverá ser exibido o pedido
        E deverá ser exbido o status do pedido