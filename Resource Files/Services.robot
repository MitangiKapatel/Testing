*** Settings ***
Library    SeleniumLibrary    
Resource   ../VariableAndDataFiles/AllVeriables.robot


*** Keywords ***
Checking Services
    Loading
    Loading
    Loading
    Wait Until Element Is Visible    ${Services Sidebar}    
    Wait Until Element Is Enabled    ${Services Sidebar}
    Click Element                    ${Services Sidebar}    
