*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PAGINA}    https://seubarriga.wcaquino.me/login
${BROWSER}    Chrome
${NOVOUSUARIO}    usuariotest123
${EMAIL}    usuariotest11@gmail.com
${SENHA}    usuariotest123
${BTN_NOVOUSUARIO}    //*[@id="bs-example-navbar-collapse-1"]/ul/li[2]/a    
${MSG_CADASTROSUCESS}    Usuário inserido com sucesso    
${MSG_EMAILUTILIZADO}    Endereço de email já utilizado
${MSG_LOGINSUCESS}    Bem vindo, usuariotest123!    
    

*** Keywords ***
Acessar o site de teste
    Open Browser    ${PAGINA}    ${BROWSER}   
Clicar em Novo Usuário
    Click Element   ${BTN_NOVOUSUARIO}
Preencher o Campo Nome
    Input Text    nome    ${NOVOUSUARIO}
Preencher o Campo Email
    Input Text    email    ${EMAIL}
Preencher o Campo Senha    
    Input Password    senha    ${SENHA}
Clicar em Cadastrar
    Click Button    Cadastrar 
Checar se Aparece Mensagem de Sucesso
    Current Frame Should Contain    ${MSG_CADASTROSUCESS}
Checar se Aparece Mensagem de Email já Utilizado
    Current Frame Should Contain    ${MSG_EMAILUTILIZADO}
Clicar em Entrar
    Click Button    Entrar
Checar se Mensagem de Sucesso do login
    Current Frame Should Contain    ${MSG_LOGINSUCESS}        

        




        
    




