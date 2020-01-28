*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    BuiltIn 
Library    Collections     
Resource   ../VariableAndDataFiles/AllVeriables.robot  
Resource   ../VariableAndDataFiles/UserData.robot       

*** Keywords ***

create new team
     
    
    #Click Element  xpath://*[@id="ecv-page-header"]/div[2]/div/i
    Click Element    ${Team Creation Logo}
    Loading
    Loading
    sleep  3
    Wait Until Element Is Visible   ${Team Checkbox}    timeout=30 seconds
    Wait Until Element Is Enabled   ${Team Checkbox}    timeout=30 seconds 
    Select Radio Button             ${Radio Btn Name}   team
    Input Text                      ${Team_Firstname}   ${Firstname}    
    Input Text                      ${Team Lastname}    ${Lastname}
    Input Text                      ${Team BD}          ${BirthDate}
    Click Element                   ${Save Team}
    #Input Text    xpath://*[@id="ddlTeamRole"]/div/span    text             
  