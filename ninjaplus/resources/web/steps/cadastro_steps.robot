*** Settings ***
Resource        ./base.robot
Library         ../../lib/db.py

*** Variables ***
# DataTest
${Title}        Resident Evil
${Status}       Disponível
${Year}         2002
${ReleaseDate}  01/12/2002
@{Cast}         Mila Jovovich       Ali larter      Ian Glen
${Plot}         Alice tem a missão de desativar a rainha vermelha
       
*** Keywords ***
#### Steps
Dado que estou logado com credenciais validas
    Input Text      ${EMAIL_USER}      ronaldo@ninjaplus.com
    Input Text      ${PASS_USER}       123456
    Click Button    ${CLICK_BUTTON}
Quando eu faço o cadastro de um novo filme
    Remove Movie By Title               ${Title}
    Click Button                        ${BUTTON_ADD}
    Input Text                          ${INPUT_TITLE}      ${title}
    Click Element                       ${DROP_STATUS}
    Wait until Element Is Visible       ${OPTION_AVAIABLE}
    Click Element                       ${OPTION_AVAIABLE}
    Input Text                          ${INPUT_YEAR}       ${Year}
    Input Text                          ${INPUT_RDATE}      ${ReleaseDate}
    # Input Text                          ${INPUT_CAST}       Ator1
    # Press Keys                          ${INPUT_CAST}       TAB
    : FOR       ${item}     IN      @{Cast}     
    \       Input Text  ${INPUT_CAST}   ${item}
    \       Press Keys  ${INPUT_CAST}   TAB
    \       Log         ${item}
    Input text                          ${TEXT_PLOT}        ${Plot}
    Click Button                        ${BUTTON_SAVE}

Então este filme deve ser exibido na lista
    Wait Until Element contains         ${TABLE_ITEM}      ${Title}
