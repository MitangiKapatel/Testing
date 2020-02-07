*** Settings ***
Library    SeleniumLibrary 
Resource   ../VariableAndDataFiles/AllVeriables.robot   

*** Keywords ***
Logout
    #Wait Until Page Does Not Contain   Assign "2018-2019 Emergency Information for Transpoters"
     
    Wait Until Page Does Not Contain   Loading
    Wait Until Page Does Not Contain   Loading
    Wait Until Page Does Not Contain   Loading
    Wait Until Page Contains Element   ${HeaderUserName}    
    Wait Until Element Is Enabled      ${HeaderUserName}      timeout=30 seconds
    Wait Until Element Is Visible      ${HeaderUserName}      timeout=30 seconds
    Click Element                      ${HeaderUserName}
    Click Element                      ${Logout}
        