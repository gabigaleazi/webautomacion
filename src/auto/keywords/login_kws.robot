*** Settings ***
Documentation    Keywords relacionadas a tela login

Resource    ../../config/package.robot

*** Keywords ***
Quando inserir os dados de login
    [Arguments]                      ${EMAIL}                ${SENHA}
    Wait Until Element Is Visible    ${LOGIN.INPUT_EMAIL}
    Input Text                       ${LOGIN.INPUT_EMAIL}    ${EMAIL}
    Input Text                       ${LOGIN.INPUT_SENHA}    ${SENHA}