*** Settings ***
Library    Selenium2Library    
Resource    All Veriables.robot

*** Keywords ***
Analytics
    Loading
    Loading
    Loading
    Sleep    10    
    Wait Until Page Does Not Contain    Assign "2018-2019 Emergency Information for Transporters"    
    Wait Until Element Is Visible    xpath://*[@id="side-nav"]/ul/li[6]/a/div[1]/i     timeout=30 seconds
    Wait Until Element Is Enabled    xpath://*[@id="side-nav"]/ul/li[6]/a/div[1]/i     timeout=30 seconds
    Click Element    xpath://*[@id="side-nav"]/ul/li[6]/a/div[1]/i
    Go Back   