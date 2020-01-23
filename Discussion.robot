*** Settings ***
Library    Selenium2Library    
Resource    AllVeriables.robot
Resource    UserData.robot

*** Keywords ***

Start Discussions
    Loading
    Loading
    Loading
    Loading
    Loading
    Wait Until Element Is Visible    ${disscussionIcon}    timeout=30 seconds
    Wait Until Element Is Enabled    ${disscussionIcon}    timeout=30 seconds
    Click Element                    ${disscussionIcon} 
    #Loading 
    #select team   
    Loading
    Loading
    Loading
    
    Loading
    Loading  
    Loading
    Wait Until Page Contains Element  ${DiscussionBtn}     timeout=30 seconds
    Wait Until Element Is Visible    ${DiscussionBtn}      timeout=60 seconds
    Wait Until Element Is Enabled    ${DiscussionBtn}      timeout=60 seconds
    sleep   2
    Click Button                     ${DiscussionBtn}  
    Wait Until Element Is Visible    ${DiscussionTitle}    timeout=60 seconds
    Wait Until Element Is Enabled    ${DiscussionTitle}    timeout=60 seconds
    Input Text                       ${DiscussionTitle}    ${DiscussionTitle}  
    Click Element                    ${DiscussionMsg}   
    Input Text	                     ${MsgEditer}          ${DiscussionMsg}        
    
    Click Button                     ${CreatDisBtn}
    Go Back