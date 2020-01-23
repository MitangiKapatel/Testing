*** Settings ***
Library    Selenium2Library
Library    OperatingSystem
Library    BuiltIn 
Library    Collections              
Resource   AllVeriables.robot
Resource    UserData.robot

*** Keywords ***
login 
    wait until page contains element  ${Gmail login_btn} 
    Click Element                     ${Gmail login_btn}
    #@{win_list}=                     Get Window Handles           browser=CURRENT
    @{windows} =                      Get Window Handles           browser=CURRENT
    ${numWindows} =                   Get Length                   ${windows}
    ${indexLast} =                    Evaluate                     ${numWindows}-1
    Should Be True                    ${numWindows} > 1
    Select Window                     @{windows}[${indexLast}]   
    Wait Until Element Is Visible     ${Email Text Field}          timeout=40 seconds     
    Input Text                        ${Email Text Field}          ${EmailID}  
    Press Keys                        ${Email Next btn}            \\13
    
    Sleep    3    
    Input Password                    ${Password TextField}        ${Password}
    Press Keys                        ${Password Next btn}         \\13
    Select Window                     ${ecvPageTitle}
    Wait Until Element Is Visible     ${vaultkey}                  timeout=30 seconds
    Wait Until Element Is Enabled     ${vaultkey}                  timeout=30 seconds
    Wait Until Page Does Not Contain  Loading                      timeout=30 seconds
    Input Password                    ${vaultkey}                  ${ValtkeyPassword}    
    Press Keys                        id:submit                    \\13     

    
   
