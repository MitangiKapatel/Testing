*** Settings ***
Library    Selenium2Library    
Resource    All Veriables.robot

*** Keywords ***

Discussions
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
    Wait Until Element Is Visible    ${DiscussionBtn}      timeout=60 seconds
    Wait Until Element Is Enabled    ${DiscussionBtn}      timeout=60 seconds
    Loading
    Loading  

    Click Button                     ${DiscussionBtn}  
    Wait Until Element Is Visible    ${DiscussionTitle}    timeout=60 seconds
    Wait Until Element Is Enabled    ${DiscussionTitle}    timeout=60 seconds
    Input Text                       ${DiscussionTitle}    title  
    Click Element                    ${DiscussionMsg}   
    Input Text	                     ${MsgEditer}          text        
    
    Click Button                     ${CreatDisBtn}
    Go Back