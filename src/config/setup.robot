*** Settings ***
Documentation    Configurações de inicialização e finalização dos testes

*** Keywords ***
Abrir sessão
    Open Browser    http://automationpractice.com/index.php    chrome
    Maximize Browser Window
    Set Selenium Timeout    60

Encerrar sessão
    Capture Page Screenshot
    Close Browser