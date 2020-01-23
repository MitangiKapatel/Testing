*** Settings ***
Library    Selenium2Library    
Resource   AllVeriables.robot


*** Keywords ***
 select team
    Loading
    Loading
    Loading
    #Click Element    xpath://*[@id="ecv-page-header"]/div[2]/div/i
    Loading  
    Wait Until Page Does Not Contain    Please enter your Vault Key    timeout=30 seconds
    Wait Until Page Does Not Contain    Desktop   timeout=30seconds   
    Wait Until Element Is Visible       ${TeamSectList}                timeout=30 seconds
    Wait Until Element Is Enabled       ${TeamSectList}                timeout=30 seconds 
    Click Element                       ${TeamSectList}     
    Element Should Be Enabled           ${TeamSectList}    
    #Wait Until Element Is Visible       ${SelcTeamHeaderList}      timeout=50 seconds
    #Wait Until Element Is Enabled       ${SelcTeamHeaderList}      timeout=50 seconds
    #Click Element                       ${SelcTeamHeaderList}
    #Click Element                       xpath=id('global-cr')/li[text()='ABC XYZ']
    Click Element    ${SelcTeamHeaderList}    