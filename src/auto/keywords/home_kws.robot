*** Settings ***
Documentation    Keywords relacionadas a tela home

Resource    ../../config/package.robot

*** Keywords ***
Dado que o cliente esteja na tela inicial da aplicação
    Abrir sessão                     
    Wait Until Element Is Visible    ${HOME.BTN_SIGNIN}

E acessar a tela de login
    Click Element    ${HOME.BTN_SIGNIN}