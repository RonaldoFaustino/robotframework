*** Settings ***
Documentation   Formulario de Cadastro de filmes
Resource        ../../resources/web/steps/cadastro_steps.robot

Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***

Novo filme
    Dado que estou logado com credenciais validas
    Quando eu faço o cadastro de um novo filme
    Então este filme deve ser exibido na lista