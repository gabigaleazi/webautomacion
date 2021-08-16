*** Settings ***
Documentation    Cenarios de testes relacionado ao login da aplicação.

Resource    ../../src/config/package.resource


*** Test Cases ***
Cenario: Login com sucesso
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    Quando realizar o login com sucesso
    Então deve visualizar a tela de My Account
    Encerrar sessão