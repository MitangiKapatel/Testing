*** Settings ***
Library    Selenium2Library
Library    OperatingSystem
Library    BuiltIn 
Library    Collections
Resource    All Veriables.robot

*** Keywords ***

Forms
    #Loading
    #select team
    Loading
    Wait Until Element Is Visible    ${formSidebar}    timeout=30 seconds
    Wait Until Element Is Enabled    ${formSidebar}    timeout=30 seconds    
    Click Element                    ${formSidebar}
    Loading
    Click Element                    ${AvailableForm}   
    Wait Until Element Is Visible    ${firstForm}
    Wait Until Element Is Enabled    ${firstForm}   
    Click Element                    ${firstForm}
    Go Back
    Wait Until Element Is Visible    ${AssignBtn}    
    Wait Until Element Is Enabled    ${AssignBtn}
    Click Button                     ${AssignBtn}
    Loading
    Click Element                    ${TeamMemSectList}
    Click Element    	             ${ClickOnFirstTeam}
    Click Element                    ${finalAssign}                   

    Go Back