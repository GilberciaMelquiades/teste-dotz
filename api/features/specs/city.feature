# language: pt
# force_encoding("UTF-8")
# force_encoding(Encoding::UTF_8)

Funcionalidade: Manter dados de tempo através da API
    Sendo um usuario do sistema
    Quero realizar requisiçoes de API
    Para Obter dados da cidade de origem

    @cidade
    Cenário: Consultar Resultado de cidade origem
        Dado que acesso a API para obter dados da cidade de origem
        Quando realizar uma requisicao com os dados "Manari" e "52bae9cdafbec4438254e84afa4235c3"
        Então a API deve retornar statuscode 200
        E deve conter a informação do tempo
    @invalid
    Cenário: Requisição Get com auteticação invalida
        Dado que acesso a API para obter dados da cidade de origem
        Quando realizar uma requisicao com os dados "Manari" e "52bae9cdafbec4438254e84afa423512"
        Então a API deve retornar statuscode 401