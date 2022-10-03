# language: pt
# force_encoding("UTF-8")
# force_encoding(Encoding::UTF_8)

@all_Weather
Funcionalidade: Obter dados da cidade 

  Como um usuário do sistema
  Eu quero realizar as requisições na API
  para fim de obter os dados da cidade que mais gostei de conhecer


  @get_Weather_by_lat_long_verify_temp
  Cenário: Consulter dados de Tempo
    Dado o endereço da API de obter dados do tempo de uma determinada cidade
    Quando realizar uma requisicao para obter os dados "20.44" e "48.54"
    Então a API deve retornar as informações de sucesso da consulta respondendo o codigo 200
    E deve conter a informação do weather,main e visibility
