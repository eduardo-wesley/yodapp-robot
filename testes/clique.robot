*** Settings ***

Library    AppiumLibrary   

Resource    ../resources/base-resouce.robot

*** Variables ***

*** Test Cases ***
Deve realizar clique 
    
    Start session
    Open appication
    Main menu    Clique em Botões
    Go item      Clique simples
    
    
    ${CLIQUE_BUTTON}    Set Variable    com.qaxperience.yodapp:id/short_click
    Click Element                    ${CLIQUE_BUTTON}
    Wait Until Page Contains         ${CLIQUE_BUTTON}

    Sleep    3

    Close Application

Deve realizar clique longo

    [Tags]    long
    
    Start session
    Open appication
    Main menu    Clique em Botões
    Go item      Clique longo
    
    ${locator}    Set Variable    com.qaxperience.yodapp:id/long_click
    ${position}    Get Element Location     ${locator}
    
    Tap With Positions                  1000    ${${position}[x],${position}[y]}
    Wait Until Page Contains            CLIQUE LONGO

    Sleep    3

    Close Application 

