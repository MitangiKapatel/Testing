*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    BuiltIn 
Library    Collections
Resource   ../VariableAndDataFiles/AllVeriables.robot

*** Keywords ***

Verifing Forms
    #Loading
    #select team
    Loading
    Wait Until Element Is Visible    ${formSidebar}    timeout=30 seconds
    Wait Until Element Is Enabled    ${formSidebar}    timeout=30 seconds    
    Click Element                    ${formSidebar}
    Loading
    Wait Until Element Is Visible    ${AvailableForm}  
    Wait Until Element Is Enabled    ${AvailableForm}    
    Click Element                    ${AvailableForm}   
    Wait Until Element Is Visible    ${firstForm}
    Wait Until Element Is Enabled    ${firstForm}   
    Click Element                    ${firstForm}
    Go Back
    Wait Until Element Is Visible    ${AssignBtn}    
    Wait Until Element Is Enabled    ${AssignBtn}
    Click Button                     ${AssignBtn}
    Loading
    Loading
    Loading
    Wait Until Element Is Enabled    ${TeamMemSectList}    
    Click Element                    ${TeamMemSectList}
    Click Element    	             ${ClickOnFirstTeam}
    Click Element                    ${finalAssign}                   

    Go Back