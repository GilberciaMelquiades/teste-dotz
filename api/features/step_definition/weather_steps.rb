

Dado('o endereço da API de obter dados do tempo de uma determinada cidade') do
  @path = ENV["url_path"];
end

Quando('realizar uma requisicao para obter os dados {string} e {string}') do |latitude, longitude|
  @route = "weather?lat=#{latitude}&lon=#{longitude}"
  @appid =  ENV["api_key"];
  @resposta = callweather.get(@path,@route,@appid);
  
end

Então('a API deve retornar as informações de sucesso da consulta respondendo o codigo {int}') do |statuscode|
  expect(@resposta.code).to eql(statuscode)
end

Então('deve conter a informação do weather,main e visibility') do
  expect(@resposta.parsed_response).to include ("weather")
  expect(@resposta.parsed_response).to include ("main")
  expect(@resposta.parsed_response).to include ("visibility")
end