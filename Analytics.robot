*** Settings ***
Library    Selenium2Library    
Resource    AllVeriables.robot

*** Keywords ***
Checking Analytics
    Loading
    Loading
    Loading
    Sleep    10    
    Wait Until Page Does Not Contain    Assign "2018-2019 Emergency Information for Transporters"    
    Wait Until Element Is Visible       ${Anlytics Sidevar}     timeout=30 seconds
    Wait Until Element Is Enabled       ${Anlytics Sidevar}     timeout=30 seconds
    Click Element                       ${Anlytics Sidevar}
    Go Back   