*** Settings ***
Library    Selenium2Library
Library    OperatingSystem
Library    BuiltIn 
Library    Collections  
Resource    All Veriables.robot

*** Keywords ***
checking for the document
    Loading
    Loading
    Loading
    Wait Until Element Is Visible    ${docu Sidebar}    timeout=30 seconds
    Wait Until Element Is Enabled    ${docu Sidebar}    timeout=30 seconds    
    Click Element    ${docu Sidebar}  
    Wait Until Element Is Visible    ${FolderOption}    
    Click Element    ${FolderOption}    
    #Select From List By Index    class:menu-options    1
    Wait Until Element Is Visible     ${selectOpen}   timeout=20 seconds
    Click Element   ${selectOpen}
    Loading    
    Go Back
    #Wait Until Element Is Visible    name:documentFile     timeout=50 seconds
    #Wait Until Element Is Enabled    name:documentFile     timeout=50 seconds 
    sleep  5
    Click Button    ${uploadBtn}       
    
    #select team
    #Loading        
    #Click Element    xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div/div[3]/div/div/form/div/div[1]/h5/span/label  #browse for file
    Wait Until Element Is Enabled    ${drag$dropArea}
    Choose File    ${drag$dropArea}    ${UploadfilePath}       
    Wait Until Element Is Enabled    ${finalUpload}    timeout=30seconds    
    Click Button    ${finalUpload}
    Go Back
       