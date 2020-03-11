*** Settings ***
Documentation  Verifica se o app está UP
Resource    ../../resources/web/login_steps.robot

Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
App está no AR
    App deve está no ar