*** Settings ***
Resource    MeuResource.robot    

*** Test Cases ***
Realizar cadastro com sucesso
    Acessar o site de teste
    Clicar em Novo Usuário
    Preencher o Campo Nome
    Preencher o Campo Email
    Preencher o Campo Senha
    Clicar em Cadastrar
    Checar se Aparece Mensagem de Sucesso