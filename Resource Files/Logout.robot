*** Settings ***
Library    SeleniumLibrary 
Resource   ../VariableAndDataFiles/AllVeriables.robot   

*** Keywords ***
Logout
    #Wait Until Page Does Not Contain   Assign "2018-2019 Emergency Information for Transpoters"
    sleep   10  
    Wait Until Page Does Not Contain   Loading
    Wait Until Page Does Not Contain   Loading
    Wait Until Page Does Not Contain   Loading
      
    Wait Until Element Is Enabled    ${HaderUserName}      timeout=30 seconds
    Wait Until Element Is Visible    ${HaderUserName}      timeout=30 seconds
    Click Element                    ${HaderUserName}
    Click Element                    ${Logout}
        