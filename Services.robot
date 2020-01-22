*** Settings ***
Library    Selenium2Library    
Resource    All Veriables.robot


*** Keywords ***
Services
    Loading
    Loading
    Loading
    Wait Until Element Is Visible    xpath://*[@id="side-nav"]/ul/li[7]/a/div[1]/span    
    Wait Until Element Is Enabled    xpath://*[@id="side-nav"]/ul/li[7]/a/div[1]/span
    Click Element    xpath://*[@id="side-nav"]/ul/li[7]/a/div[1]/span    
