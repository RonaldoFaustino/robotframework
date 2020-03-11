*** Settings ***
Documentation  O Usuário informar suas credenciais de acesso e vai para area logada
Resource    ../../resources/web/steps/login_steps.robot

Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
login com sucesso
    Fazendo login com "ronaldo@ninjaplus.com" e senha "123456"
    Devo ver a meu nome "Ronaldo" na área logada
# Senha Inválida
#     Fazendo login com "papito@ninjaplus.com" e senha "pwd124"
#     Devo ver a seguinte mensagem de alerta "Usuário e/ou senha inválidos"

# Usuário não cadastrado
#     Fazendo login com "papito@ninjaplus.io" e senha "pwd124"
#     Devo ver a seguinte mensagem de alerta "Usuário e/ou senha inválidos"

Email deve ser requerido
    Fazendo login com "" e senha "123456"
    Devo ver a seguinte mensagem de alerta "Opps. Cadê o email?"

Senha deve ser requerida
    Fazendo login com "ronaldo@ninjaplus.com" e senha ""
    Devo ver a seguinte mensagem de alerta "Opps. Cadê a senha?"
