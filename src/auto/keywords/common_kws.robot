*** Settings ***
Documentation    Keywords comuns de uso

Resource    ../../config/package.resource

*** Keywords ***
E clicar no elemento
    [Arguments]                      ${ELEMENTO}
    Wait Until Element Is Visible    ${ELEMENTO}
    Click Element                    ${ELEMENTO}

Então deve apresentar mensagem
    [Arguments]                      ${ELEMENTO}          ${MENSAGEM_ESPERADA}
    Wait Until Element Is Visible    ${ELEMENTO}
    ${MENSAGEM_ATUAL}                Get Text             ${ELEMENTO}
    Should Be Equal                  ${MENSAGEM_ATUAL}    ${MENSAGEM_ESPERADA}    

Quando clicar no botão 
    [Arguments]             ${ELEMENTO}
    E clicar no elemento    ${ELEMENTO}