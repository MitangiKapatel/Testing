*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    BuiltIn 
Library    Collections
Resource   ../VariableAndDataFiles/AllVeriables.robot

*** Keywords ***

Verifing Forms
    #Loading
    #select team
    Loading
    Wait Until Element Is Visible    ${formSidebar}    timeout=30 seconds
    Wait Until Element Is Enabled    ${formSidebar}    timeout=30 seconds    
    Click Element                    ${formSidebar}
    Loading
    Wait Until Element Is Visible    ${AvailableForm}  
    Wait Until Element Is Enabled    ${AvailableForm}    
    Click Element                    ${AvailableForm}   
    # Wait Until Element Is Visible    ${firstForm}
    # Wait Until Element Is Enabled    ${firstForm}   
    # Click Element                    ${firstForm}
    # Go Back
    # Wait Until Element Is Visible    //button[contains(@class,'orange-button')]     timeout=30 seconds
    @{AssignBtn}=    Get WebElements    ${AssignBtnClassName}
    ${count} =  Get Length    ${AssignBtn}
    # Click Element      @{elements}[2]
	# FOR  ${index}   IN   0 to ${count}
        # ${AssignBtn}=    Get Text    ${elements}
        # Run Keyword If    '${index}' == '2'    Exit For Loop 
	      	
	# END
    Wait Until Element Is Visible    @{AssignBtn}[2]       timeout=30 seconds 
    Wait Until Element Is Enabled    @{AssignBtn}[2]       timeout=30 seconds
    Click Button                     @{AssignBtn}[2]
    Loading
    Loading
    Loading
   
    Wait Until Element Is Visible    ${TeamMemSectList}   timeout=30 seconds    
    Wait Until Element Is Enabled    ${TeamMemSectList}   timeout=30 seconds
    Click Element                    ${TeamMemSectList}
    @{ClickOnFirstTeam}=    Get WebElements    //*[contains(@class,'ui-select-choices-row-inner')]
    ${count} =  Get Length    ${ClickOnFirstTeam}
    Log    Num value is ${count}
    Click Element    	             @{ClickOnFirstTeam}[1]
    Click Element                    ${finalAssign}                   

    Go Back

*** Variables ***
${AssignBtn}    None