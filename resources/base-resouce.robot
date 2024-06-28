*** Settings ***

Library    AppiumLibrary


*** Variables ***


*** Keywords ***
Start session
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                deviceName=Android Emulator
    ...                automationName=UIAutomator2
    ...                app=${EXECDIR}/app/yodapp-beta.apk
    ...                udid=emulator-5554

Open appication
    Wait Until Page Contains        QAX    
    Click Element                   //*[@text="QAX"]  

Main menu
    [Arguments]    ${menu_test}
    ${hambuguer}    Set Variable      //android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible     ${hambuguer} 
    Click Element                     ${hambuguer}  

    
    ${menu_item}    Set Variable       //*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${menu_test}"]
    Wait Until Element Is Visible      ${menu_item}
    Click Element                      ${menu_item}

Go item
    [Arguments]    ${click_start}
    ${clique_simples}    Set Variable    //*[@text="${click_start}"]
    Wait Until Element Is Visible       ${clique_simples} 
    Click Element                       ${clique_simples}  
   
    
   
