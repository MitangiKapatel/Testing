*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    BuiltIn 
Library    Collections  
Library    SeleniumTest.PythonOrgSearch    
Resource   ../VariableAndDataFiles/AllVeriables.robot

*** Keywords ***
checking for the document
    Loading
    Loading
    Loading
    Wait Until Element Is Visible    ${Document Sidebar}    timeout=40 seconds
    Wait Until Element Is Enabled    ${Document Sidebar}    timeout=40 seconds    
    Click Element                    ${Document Sidebar} 
    Loading 
    Loading 
    Wait Until Element Is Visible    ${FolderOption}        timeout=40 seconds
    Wait Until Element Is Enabled    ${FolderOption}        timeout=40 seconds
    Open My Browser    ${FolderOption}
    Click Element                    ${FolderOption}    
    #Select From List By Index    class:menu-options    1
    Wait Until Element Is Visible    ${SelectOpen}      timeout=20 seconds
    Click Element                    ${SelectOpen}
    Loading    
    Go Back
    Loading
    Loading
    Loading
    Wait Until Element Is Visible    ${Upload Btn}     timeout=50 seconds
    Wait Until Element Is Enabled    ${Upload Btn}     timeout=50 seconds 
   
    Click Button                     ${Upload Btn}       
    
    #select team
    #Loading        
    #Click Element    xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div/div[3]/div/div/form/div/div[1]/h5/span/label  #browse for file
    Wait Until Element Is Enabled    ${Drag&Drop Area}
    Choose File                      ${Drag&Drop Area}    ${Upload FilePath}       
    Wait Until Element Is Enabled    ${Final Upload}      timeout=30seconds    
    Click Button                     ${Final Upload}
    Go Back
       