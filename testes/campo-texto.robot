*** Settings ***

Library    AppiumLibrary   

Resource    ../resources/base-resouce.robot

*** Variables ***

*** Test Cases ***
Deve realizar o login 
    
    Start session
    Open appication
    Main menu    Formulários
    Go item      Login
    
    
    Input Text        id=com.qaxperience.yodapp:id/etEmail        yoda@qax.com
    Input Text        id=com.qaxperience.yodapp:id/etPassword     jedi
    Click Element     id=com.qaxperience.yodapp:id/btnSubmit        

    Sleep    3

    Close Application