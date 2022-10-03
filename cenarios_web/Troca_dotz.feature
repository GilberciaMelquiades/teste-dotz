#language:pt

@site_dotz
@troque
@viagens
Funcionalidade: trocar dotz por viagens
    Como usuário do sistema
    Quero poder fazer trocas por viagens

    Contexto: Acessar a aplicação Viaja dotz
        * acessar o login
        * informar os dados de acesso ao site dotz "Login" "senha" "nascimento"
        * validar login com sucesso


    Cenário:Validar entrada com sucesso no viaja dotz
        Dado selecionar viaja dotz
        Quando selecionar a <origem> e <destino>
            E data de <ida> e <volta>
            E <quantidade>
        Então Então visualizar todas as opçoes de viagens


    @troque
    Esquema do Cenario: Tentativa de Validar viaja dotz
        Dado selecionar viaja dotz
        Quando selecionar  <origem> <destino>
            E data <ida> <volta>
        Então visualizar <mensagem>

            Exemplo:
            | origem   | destino  | ida      | volta    | mensagem                                                               |
            | invalido | valido   | valido   | valido   | Preencha o campo Origem e tente novamente.                             |
            | valido   | invalido | valido   | valido   | Preencha o campo Destino e tente novamente.                            |
            | valido   | valido   | invalido | valido   | Preencha a Data de Ida e tente novamente.                              |
            | valido   | valido   | valido   | invalido | Preencha a Data de Volta ou marque a opção Somente Ida para continuar. |