*** Settings ***
Library    Selenium2Library    


*** Keywords ***
login 
    wait until page contains element  xpath://*[@id="gglCustomBtn"] 
    Click Element    xpath://*[@id="gglCustomBtn"]
    Switch Window    title=Sign in – Google accounts
    Input Text    xpath://*[@id="identifierId"]    mitangi@jeavio.com  
    Press Keys   xpath://*[@class="RveJvd snByac"]   \\13
    
    Sleep    3    
    Input Password    xpath://*[@class="whsOnd zHQkBf"]    Mitu1113@
    Press Keys    xpath://*[@class="RveJvd snByac"]   \\13
    Select Window    title:eCareVault
    Wait Until Element Is Visible   xpath://*[@id="password"]    timeout=30 seconds
    Wait Until Element Is Enabled  xpath://*[@id="password"]    timeout=30 seconds
    Wait Until Page Does Not Contain    Loading    timeout=30 seconds
    Input Password    id:password    ABCxyz123@    
    Press Keys    id:submit     \\13 