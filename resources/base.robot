***Settings***
Library    AppiumLibrary

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

Go To Home Screen
    Wait Until Page Contains    ${btn_comecar}
    Click Text                  ${btn_comecar}

Open Menu
    Wait Until Element is Visible    accessibility_id=Open navigation drawer
    Click Element                    accessibility_id=Open navigation drawer    
    Wait Until Element is Visible    id=io.qaninja.android.twp:id/navView