*** Settings ***
Documentation    Configurações de inicialização e finalização dos testes

*** Keywords ***
Abrir sessão
    Open Browser               ${CONFIG.URL}        ${CONFIG.NAVEGADOR}
    Maximize Browser Window
    Set Selenium Timeout       ${CONFIG.TIMEOUT}

Encerrar sessão
    Capture Page Screenshot
    Close Browser