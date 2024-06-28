*** Settings ***

Library    AppiumLibrary   

Resource    ../resources/base-resouce.robot

*** Variables ***

*** Test Cases ***
Deve verificar o CheckBox
    
    Start session
    Open appication
    Main menu    Check e Radio
    Go item      Checkbox    
    
    @{techs}    Create List    Ruby    Python    Java    Javascript    C#    Robot Framework
    FOR  ${tech}  IN    @{techs}
    
    Click Element    xpath=//android.widget.CheckBox[contains(@text, "${tech}")]
    Sleep    1
    
    END
    
    Sleep    2

    Close Application