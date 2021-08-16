*** Settings ***
Documentation    Keywords relacionadas a tela login

Resource    ../../config/package.robot

*** Keywords ***
Quando realizar o login com sucesso
    Wait Until Element Is Visible    ${LOGIN.INPUT_EMAIL}
    Input Text                       ${LOGIN.INPUT_EMAIL}    galeazigabi1@teste.com
    Input Text                       ${LOGIN.INPUT_SENHA}    Semprerico@1997
    Click Element                    ${LOGIN.BTN_SIGNIN}