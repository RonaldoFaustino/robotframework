*** Settings ***
Documentation  O Usuário informar suas credenciais incorretas e é notificado com uma mensagem de alerta
Resource    ../../resources/web/steps/login_steps.robot
Test Template    Logando com credenciais inválidas deve ver uma mensagem de alerta


Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
Senha Inválida              ronaldo@ninjaplus.com       123457      Usuário e/ou senha inválidos
Usuário não cadastrado      ronaldo@ninjaplus.io        123456      Usuário e/ou senha inválidos
Email não informado         ${EMPTY}                    abc123      Opss. Cadê o email?
Senha requerida             ronaldo@ninjaplus.com       ${EMPTY}    Opps. Cadê a senha?

