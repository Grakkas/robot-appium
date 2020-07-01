***Settings***
Library          AppiumLibrary
Resource         ../resources/base.robot
Test Setup       Open Session
Test Teardown    Close Session

***Variables***
${menu_tw}    id=io.qaninja.android.twp:id/toolbarTitle

***Test Cases***
Deve entrar na tela DIALOGS
    Go To Home Screen
    Open Menu
    Click Text                       DIALOGS
    Wait Until Element is Visible    ${menu_tw}
    Element Text Should Be           ${menu_tw}    DIALOGS

Deve entrar na tela FORMS
    Go To Home Screen
    Open Menu
    Click Text                       FORMS
    Wait Until Element is Visible    ${menu_tw}
    Element Text Should Be           ${menu_tw}    FORMS