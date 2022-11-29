*** Settings ***

Resource    MeuResource.robot

*** Test Cases ***

Realizar Login Com Sucesso Utilizando Credenciais Válidas
    Acessar o site de teste
    Preencher o Campo Email
    Preencher o Campo Senha
    Clicar em Entrar
    Checar se Mensagem de Sucesso do login
    
