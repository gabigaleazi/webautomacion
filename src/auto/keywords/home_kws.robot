*** Settings ***
Documentation    Keywords relacionadas a tela home

Resource    ../../config/package.resource

*** Keywords ***
Dado que o cliente esteja na tela inicial da aplicação                     
    Wait Until Element Is Visible    ${HOME.BTN_SIGNIN}

E acessar a tela de login
    Click Element    ${HOME.BTN_SIGNIN}