***Settings***
Resource         ../resources/config.robot
Resource         ../resources/helpers.robot
Test Setup       Open Session
Test Teardown    Close Session

***Variables***
${input_email}    id=io.qaninja.android.twp:id/etEmail
${input_senha}    id=io.qaninja.android.twp:id/etPassword
${btn_entrar}     id=io.qaninja.android.twp:id/btnSubmit
${input_nome}     io.qaninja.android.twp:id/etUsername
${nome}           Teste da Silva
${perfil}         QA
***Test Cases***
Deve realizar o login com sucesso
    Go To Home Screen
    Open Menu

    Click Text                       FORMS
    Wait Until Element is Visible    ${toolbar_title}
    Element Text Should Be           ${toolbar_title}    FORMS

    Click Text                  LOGIN
    Wait Until Page Contains    Fala QA, vamos testar o login?

    Input Text       ${input_email}    eu@papito.io
    Input Text       ${input_senha}    qaninja
    Click Element    ${btn_entrar}

    Wait Until Page Contains    Show! Suas credenciais são validas.

Deve cadastrar um usuario com sucesso
    Go To Home Screen
    Open Menu

    Click Text                       FORMS
    Wait Until Element is Visible    ${toolbar_title}
    Element Text Should Be           ${toolbar_title}    FORMS

    Click Text                  CADASTRO
    Wait Until Page Contains    Bem-vindo, crie sua conta.

    Input Text       ${input_nome}         ${nome}
    Input Text       ${input_email}        eu@papito.io
    Input Text       ${input_senha}        qaninja
    Click Text       Escolha seu perfil
    Sleep            5
    Click Text       ${perfil}
    Click Element    ${btn_entrar}

    Wait Until Page Contains    Tudo certo, recebemos seus dados!
