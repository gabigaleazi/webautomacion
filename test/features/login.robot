*** Settings ***
Documentation    Cenarios de testes relacionado ao login da aplicação.

Resource    ../../src/config/package.resource

Test Setup       Abrir sessão
Test Teardown    Encerrar sessão

*** Test Cases ***
Cenario: Login com sucesso
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    Quando inserir os dados de login                          EMAIL=galeazigabi1@teste.com    SENHA=Semprerico@1997    
    E clicar no elemento                                      ${LOGIN.BTN_SIGNIN}
    Então deve visualizar a tela de My Account

Cenario: Login com credenciais inválidos
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    Quando inserir os dados de login                          EMAIL=galeaziggggggg1@teste.com    SENHA=SempreR$%E@97
    E clicar no elemento                                      ${LOGIN.BTN_SIGNIN}
    Então deve apresentar mensagem                            ${LOGIN.TXT_ERRO}                  Authentication failed.