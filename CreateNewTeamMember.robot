*** Settings ***
Library    Selenium2Library
Library    OperatingSystem
Library    BuiltIn 
Library    Collections              
Resource   AllVeriables.robot
Resource    UserData.robot

*** Keywords ***
create new team member
    Wait Until Page Does Not Contain    Loading        
    Click Element                       ${Team_sidebar} 
    sleep  10
    Wait Until Page Does Not Contain    Desktop    
    Wait Until Element Is Visible       ${Add TeamMember Btn}   timeout=30 seconds 
    Wait Until Element Is Enabled       ${Add TeamMember Btn}   timeout=30 seconds
    #Click Button   xpath://span[@class='ecv-text-medium' and text()='Add Team Member']
    
    Click Button                        ${Add TeamMember Btn} 
    
    Wait Until Element Is Visible       ${TeamMember Email}     timeout=30 seconds
    Wait Until Element Is Enabled       ${TeamMember Email}     timeout=30 seconds  
    Input Text                          ${TeamMember Email}     ${TeamMemberEmailAddress} 
    Input Text                          ${TeamMember Name}      ${TeamMEmberFullName}
    Click Element                       ${TeamRole List}  
    #Click Element   ${AdvocateRol}
    Click Element                       ${AssistantRole}  
    #Wait Until Element Is Visible   class:link-text dropdown-toggle    timeout=30 seconds
    #Wait Until Element Is Enabled   class:link-text dropdown-toggle    timeout=30 seconds  
    #Select From List By Index    class:link-text dropdown-toggle    2
    #Input Text    placeholder:Team Role    Assistant    
        
    Click Button                        ${Team Invite Btn} 
    Wait Until Element Is Visible       ${Send Invitation}      timeout=30 seconds  
    Click Element                       ${Send Invitation}
    
    Go Back
    #Loading
    #Click Element   xpath://*[@id="side-nav"]/ul/li[1]/a/div[1]/i
    #Loading
    #Click Element    xpath://*[@id="side-nav"]/ul/li[3]/a/div[1]/i 
       