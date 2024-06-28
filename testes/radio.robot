*** Settings ***

Library    AppiumLibrary   

Resource    ../resources/base-resouce.robot

*** Variables ***

*** Test Cases ***
Deve verificar o Radio
    
    Start session
    Open appication
    Main menu    Check e Radio
    Go item      Botões de radio    
    
    
    Click Element    xpath=//android.widget.RadioButton[contains(@text, "Javascript")]
    Sleep    1
    

    Close Application