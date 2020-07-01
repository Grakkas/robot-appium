***Settings***
Documentation    Classe responsavel para adição de KWs utilizadas pela automação
Library          AppiumLibrary
Resource         helpers.robot

***Variables***
${btn_comecar}      COMEÇAR
${menu}             accessibility_id=Open navigation drawer
${toolbar_title}    id=io.qaninja.android.twp:id/toolbarTitle

***Keywords***
Go To Home Screen
    Wait Until Page Contains    ${btn_comecar}
    Click Text                  ${btn_comecar}

Open Menu
    Wait Until Element is Visible    ${menu} 
    Click Element                    ${menu}                                 
    Wait Until Element is Visible    id=io.qaninja.android.twp:id/navView