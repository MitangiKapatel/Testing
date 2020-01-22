*** Settings ***
Library    Selenium2Library
Library    OperatingSystem
Library    BuiltIn 
Library    Collections              
Resource    All Veriables.robot

*** Keywords ***
create new team member
    Wait Until Page Does Not Contain    Loading        
    Click Element    ${Team_sidebar} 
    sleep  10
    Wait Until Page Does Not Contain    Desktop    
    Wait Until Element Is Visible    ${AddTeamMemBtn}     timeout=30 seconds 
    Wait Until Element Is Enabled    ${AddTeamMemBtn}     timeout=30 seconds
    #Click Button   xpath://span[@class='ecv-text-medium' and text()='Add Team Member']
    
    Click Button  ${AddTeamMemBtn} 
    
    Wait Until Element Is Visible   ${TeamMemEmail}    timeout=30 seconds
    Wait Until Element Is Enabled   ${TeamMemEmail}    timeout=30 seconds  
    Input Text    ${TeamMemEmail}    teammember@gmail.com 
    Input Text    ${TeamMemName}    Teammember name
    Click Element    ${TeamRolList}  
    #Click Element   ${AdvocateRol}
    Click Element    ${AssistantRol}  
    #Wait Until Element Is Visible   class:link-text dropdown-toggle    timeout=30 seconds
    #Wait Until Element Is Enabled   class:link-text dropdown-toggle    timeout=30 seconds  
    #Select From List By Index    class:link-text dropdown-toggle    2
    #Input Text    placeholder:Team Role    Assistant    
        
    Click Button    ${TeamInviteBtn} 
    Wait Until Element Is Visible      ${sendInvitation}   timeout=30 seconds  
    Click Element    ${sendInvitation}
    
    Go Back
    #Loading
    #Click Element   xpath://*[@id="side-nav"]/ul/li[1]/a/div[1]/i
    #Loading
    #Click Element    xpath://*[@id="side-nav"]/ul/li[3]/a/div[1]/i 
       