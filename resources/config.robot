***Settings***
Documentation    Classe responsavel pela configuração dos hooks e da comunicação com o Appium e Android
Library          AppiumLibrary
Resource         helpers.robot

***Variables***
${btn_comecar}    COMEÇAR

***Keywords***
Open Session
    Set Appium Timeout    5
    Open Application      http://localhost:4723/wd/hub    
    ...                   automationName=UiAutomator2
    ...                   platformName=Android
    ...                   deviceName=Emulator
    ...                   app=${EXECDIR}/app/twp.apk
    ...                   udid=emulator-5554

Close Session
    Capture Page Screenshot
    Close Application

