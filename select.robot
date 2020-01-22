*** Settings ***
Library    Selenium2Library    

*** Keywords ***
select 
    Wait Until Page Does Not Contain  Loading
    #Wait Until Element Is Visible     xpath://*[@id="ecv-page-header"]/div[2]/div/i   timeout=30 seconds    
    #Wait Until Element Is Enabled    xpath://*[@id="ecv-page-header"]/div[2]/div/i    timeout=30 seconds
    
    Click Element    id:input-1   
    