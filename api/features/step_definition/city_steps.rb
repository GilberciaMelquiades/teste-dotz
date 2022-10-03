Dado('que acesso a API para obter dados da cidade de origem') do
    @path = ENV["url_path"];
end
  
Quando('realizar uma requisicao com os dados {string} e {string}') do |cidade, appid|
    @route = "weather?q=#{cidade}"
    @resposta = callweather.get(@path,@route,appid);
end
 
Então('a API deve retornar statuscode {int}') do |statuscode|
     expect(@resposta.code).to eql(statuscode)
end


Então('deve conter a informação do tempo') do
 expect(@resposta.parsed_response['main']).to include ("temp")
end   


