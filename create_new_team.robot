*** Settings ***
Library    Selenium2Library
Library    OperatingSystem
Library    BuiltIn 
Library    Collections     
Resource    All Veriables.robot         

*** Keywords ***

create new team
     
    
    #Click Element  xpath://*[@id="ecv-page-header"]/div[2]/div/i
    Click Element    ${TeamCreationLogo}
    Loading
    Loading
    sleep  3
    Wait Until Element Is Visible   ${TeamCheckbox}    timeout=30 seconds
    Wait Until Element Is Enabled   ${TeamCheckbox}    timeout=30 seconds 
    Select Radio Button    chk-team-type     team
    Input Text    ${Team_Firstname}    Firstname    
    Input Text    ${Team Lastname}     Lastname
    Input Text    ${Team BD}    11/12/1920
    Click Element   ${SaveTeam}
    #Input Text    xpath://*[@id="ddlTeamRole"]/div/span    text             
  