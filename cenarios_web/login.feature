#language:pt

Funcionalidade: Login
    Sendo um usuário Cadastrado
    Quero acesso o site Dotz
    Para que eu posso realizar compras


    Cenario: Login do Usuário
        Dado que acesso a página principal
        Quando preencher o “cpf” e “senha” e “nascimento”
        Então sou direcionada ao dashboard

    Esquema do Cenario:Tentativa de Login
        Dado que acesso a página principal
            E preencho o cpf correto
        Quando submeto as informações <senha> e <nascimento>
        Então devo visualizar “<mensagem>”

        Exemplos:
            | senha    | nascimento | mensagem                                              |
            | valida   | invalido   | **Parte da data de nascimento informada é inválida.** |
            | invalido | valido     | **Senha inválida. Você tem 1 tentativas.**            |