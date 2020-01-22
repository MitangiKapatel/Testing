*** Settings ***
Library    Selenium2Library
Library    OperatingSystem
Library    BuiltIn 
Library    Collections              
Resource    All Veriables.robot

*** Keywords ***
login 
    wait until page contains element  ${google_login_btn} 
    Click Element                     ${google_login_btn}
    #@{win_list}=                     Get Window Handles           browser=CURRENT
    @{windows} =                      Get Window Handles           browser=CURRENT
    ${numWindows} =                   Get Length                   ${windows}
    ${indexLast} =                    Evaluate                     ${numWindows}-1
    Should Be True                    ${numWindows} > 1
    Select Window                     @{windows}[${indexLast}]   
    Wait Until Element Is Visible     ${email_text}                timeout=40 seconds     
    Input Text                        ${email_text}                mitangi@jeavio.com  
    Press Keys                        ${email next btn}             \\13
    
    Sleep    3    
    Input Password                    ${password text}            Mitu1113@
    Press Keys                        ${password next btn}        \\13
    Select Window    ${ecvPageTitle}
    Wait Until Element Is Visible   ${vaultkey}    timeout=30 seconds
    Wait Until Element Is Enabled   ${vaultkey}    timeout=30 seconds
    Wait Until Page Does Not Contain    Loading    timeout=30 seconds
    Input Password    ${vaultkey}    ABCxyz123@    
    Press Keys        id:submit     \\13     

    
   
