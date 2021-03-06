*** Settings ***
Library     String
Library     SeleniumLibrary
Resource    ../../elements.robot

*** Variables ***
${DEFAULT_URL}      http://ninjaplus-web:5000/login
${BROWSER}          chrome
       
*** Keywords ***
### Setup e Teardown
Abrir navegador
    Open Browser    ${DEFAULT_URL}     ${BROWSER}
    Set Selenium Implicit Wait      30
    Maximize Browser Window
    Title Should Be                 Ninja+

Fechar navegador
    Capture Page Screenshot
    Close Browser

#### Steps
App está no AR
    Title Should Be                 Ninja+