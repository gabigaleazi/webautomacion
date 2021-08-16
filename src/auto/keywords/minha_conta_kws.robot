*** Settings ***
Documentation    Keywords relacionadas a tela minha conta

Resource    ../../config/package.robot

*** Keywords ***
Então deve visualizar a tela de My Account
    Wait Until Element Is Visible    ${MINHA_CONTA.TITULO}
    ${TITULO_ATUAL}                  Get Text                 ${MINHA_CONTA.TITULO}
    Should Be Equal                  ${TITULO_ATUAL}          MY ACCOUNT
    Close Browser