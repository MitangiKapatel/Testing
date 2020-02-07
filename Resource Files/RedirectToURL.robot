*** Settings ***
Library    SeleniumLibrary    
Resource    ../VariableAndDataFiles/AllVeriables.robot

*** Keywords ***
Open browser and redirect to login page
    Open Browser    ${LOGIN URL}    ${BROWSER}    options=add_argument("--disable-notifications")
    Maximize Browser Window 
