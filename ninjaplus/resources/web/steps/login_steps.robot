*** Settings ***
Resource    ./base.robot

*** Keywords ***
Fazendo login com "${email}" e senha "${pass}"
    
    Input Text      ${EMAIL_USER}      ${email}
    Input Text      ${PASS_USER}       ${pass}
    Click Button    ${CLICK_BUTTON}
    
Devo ver a meu nome "${userLogado}" na área logada
    Wait Until Element Contains     ${SPAN_USER}    ${userLogado}

Devo ver a seguinte mensagem de alerta "${msg}"
    Wait Until Element Contains     ${MSG_ALERT}      ${msg}

Logando com credenciais inválidas deve ver uma mensagem de alerta

    [Arguments]                     ${email}        ${pass}     ${msg}

    Input Text                      ${EMAIL_USER}     ${email}
    Input Text                      ${PASS_USER}      ${pass}
    Click Button                    ${CLICK_BUTTON}
    Wait Until Element Contains     ${MSG_ALERT}      ${msg}