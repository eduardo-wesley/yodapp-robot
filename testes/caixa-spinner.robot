*** Settings ***

Library    AppiumLibrary   

Resource    ../resources/base-resouce.robot

*** Variables ***

*** Test Cases ***
Deve realizar o cadastro
    
    Start session
    Open appication
    Main menu    Formulários
    Go item      Cadastro
    
    
    Click Element                    id=com.qaxperience.yodapp:id/spinnerJob   
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Element                    //android.widget.TextView[@text="Jedi"]   
    

    Sleep    3

    Close Application