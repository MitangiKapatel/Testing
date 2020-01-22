*** Settings ***
Library    Selenium2Library    
Resource    All Veriables.robot

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}    options=add_argument("--disable-notifications")
    Maximize Browser Window
