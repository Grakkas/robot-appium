***Settings***
Resource         ../resources/config.robot
Resource         ../resources/helpers.robot
Test Setup       Open Session
Test Teardown    Close Session

***Test Cases***
Deve entrar na tela DIALOGS
    Go To Home Screen
    Open Menu
    Click Text                       DIALOGS
    Wait Until Element is Visible    ${toolbar_title}
    Element Text Should Be           ${toolbar_title}    DIALOGS

Deve entrar na tela FORMS
    Go To Home Screen
    Open Menu
    Click Text                       FORMS
    Wait Until Element is Visible    ${toolbar_title}
    Element Text Should Be           ${toolbar_title}    FORMS