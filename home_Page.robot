*** Settings ***
Library    Selenium2Library    



    

*** Keywords ***
goto homepage
    Page Should Contain    Mitangi Kapatel
    
    Wait Until Page Does Not Contain    Loading         
            
    
create new team
     
    Loading 
    #Click Element  xpath://*[@id="ecv-page-header"]/div[2]/div/i
    Click Element    xpath://*[@id="ecv-page-header"]/div[3]/nav/button/div/i
    Wait Until Element Is Visible   id:chk-team-type    timeout=30 seconds
    Wait Until Element Is Enabled   id:chk-team-type    timeout=30 seconds 
    Select Radio Button    chk-team-type     team
    Input Text    id:firstName    Firstname    
    Input Text    id:lastName     Lastname
    Input Text    id:birthDate    11/12/1920
    Click Element   xpath://*[@id="side-nav"]/ul/li[1]/a/div[1]/i
    #Input Text    xpath://*[@id="ddlTeamRole"]/div/span    text             
  
create new team member
    Wait Until Page Does Not Contain    Loading        
    Click Element    xpath://*[@id="step3"]/a/div[1]/i 
    sleep  10
    Wait Until Element Is Visible    name:add-team-mem    
    Wait Until Element Is Enabled    name:add-team-mem    
    #Click Button   xpath://span[@class='ecv-text-medium' and text()='Add Team Member']
    
    Click Button  xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[1]/div[2]/button[2]
    
    Wait Until Element Is Visible   xpath://*[@id="autoEmail"]/div/input    timeout=30 seconds
    Wait Until Element Is Enabled  xpath://*[@id="autoEmail"]/div/input    timeout=30 seconds  
    Input Text    xpath://*[@id="autoEmail"]/div/input    My@gmail.com 
    Input Text    xpath://*[@id="autoName"]/div/input   My name
    Click Element    xpath://*[@id="ddlTeamRole"]/div/span  
    #Click Element    xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[2]/div/md-virtual-repeat-container/div/div[2]/div[2]/div/div[3]/form/div[1]/fieldset/div/div/div[1]/div[3]/div/span/div[2]/ul[1]/li/div[4]/span/span
    Click Element    xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[2]/div/md-virtual-repeat-container/div/div[2]/div[2]/div/div[3]/form/div[1]/fieldset/div/div/div[1]/div[3]/div/span/div[2]/ul[1]/li/div[5]/span  
    #Wait Until Element Is Visible   class:link-text dropdown-toggle    timeout=30 seconds
    #Wait Until Element Is Enabled   class:link-text dropdown-toggle    timeout=30 seconds  
    #Select From List By Index    class:link-text dropdown-toggle    2
    #Input Text    placeholder:Team Role    Assistant    
        
    Click Button    id:add-tm-invite 
    Wait Until Element Is Visible      xpath:/html/body/div[1]/div/div/div/form/div/div[3]/button[2]   timeout=30 seconds  
    Click Element    xpath:/html/body/div[1]/div/div/div/form/div/div[3]/button[2]
    
    Go Back
    #Loading
    #Click Element   xpath://*[@id="side-nav"]/ul/li[1]/a/div[1]/i
    #Loading
    #Click Element    xpath://*[@id="side-nav"]/ul/li[3]/a/div[1]/i 
       
checking for the document
    Loading
    Click Element    xpath://*[@id="side-nav"]/ul/li[3]/a/div[1]/i   
    Wait Until Element Is Visible    id:folder-options-popover    
    Click Element    id:folder-options-popover    
    #Select From List By Index    class:menu-options    1
    Wait Until Element Is Visible     xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div/md-virtual-repeat-container/div/div[2]/div/div[3]/div/div/div/div/div/div/div[2]/div[2]/div[2]/div[2]/div[2]/div/ul/li[1]/div/span   timeout=20 seconds
    Click Element   xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div/md-virtual-repeat-container/div/div[2]/div/div[3]/div/div/div/div/div/div/div[2]/div[2]/div[2]/div[2]/div[2]/div/ul/li[1]/div/span
    Loading    
    Go Back
    #Wait Until Element Is Visible    name:documentFile     timeout=50 seconds
    #Wait Until Element Is Enabled    name:documentFile     timeout=50 seconds 
    sleep  5
    Click Button    name:documentFile       
    
    #select team
    #Loading        
    #Click Element    xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div/div[3]/div/div/form/div/div[1]/h5/span/label  #browse for file
    Wait Until Element Is Enabled    xpath://*[@id="mobile_upload_file"]
    Choose File    xpath://*[@id="mobile_upload_file"]    /home/jeavio37/Documents/task.odt       
    Click Button    xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div/div[3]/div/div/div[2]/div[1]/div/button[2]
    Go Back
       
    
Discussions
    sleep  10 
    Loading
    Click Element    xpath://*[@id="side-nav"]/ul/li[4]/a/div/i 
    #Loading 
    #select team   
    Loading
    Wait Until Element Is Visible    xpath://*[@id="discussion-list"]/div[2]/div[3]/div/button    timeout=60 seconds
    Wait Until Element Is Enabled    xpath://*[@id="discussion-list"]/div[2]/div[3]/div/button    timeout=60 seconds
    sleep   20  

    Click Button    xpath://*[@id="discussion-list"]/div[2]/div[3]/div/button  
    Wait Until Element Is Visible    name:title    timeout=60 seconds
    Wait Until Element Is Enabled    name:title    timeout=60 seconds
    Input Text    name:title      title  
    Click Element    name:message    
    Input Text    //*[@id="message-editor"]/div/div[2]/div[1]    text        
    
    Click Button    xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div/div[3]/div/div/div/div[2]/div/button[2]
    Go Back
   
    


Forms
    #Loading
    #select team
    Loading
    Wait Until Element Is Visible    xpath://*[@id="side-nav"]/ul/li[5]/a/div[1]/i    timeout=30 seconds
    Wait Until Element Is Enabled    xpath://*[@id="side-nav"]/ul/li[5]/a/div[1]/i    timeout=30 seconds    
    Click Element    xpath://*[@id="side-nav"]/ul/li[5]/a/div[1]/i
    Loading
    Click Element    xpath://*[@daid="available-forms-tab"]    
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[3]/div/div[1]/div/div[2]/div/table/tbody/tr[1]/td[1]/a
    Wait Until Element Is Enabled    xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[3]/div/div[1]/div/div[2]/div/table/tbody/tr[1]/td[1]/a   
    Click Element    xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[3]/div/div[1]/div/div[2]/div/table/tbody/tr[1]/td[1]/a
    Go Back
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[3]/div/div[1]/div/div[2]/div/table/tbody/tr[1]/td[4]/button    
    Wait Until Element Is Enabled    xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[3]/div/div[1]/div/div[2]/div/table/tbody/tr[1]/td[4]/button
    Click Button    xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[3]/div/div[1]/div/div[2]/div/table/tbody/tr[1]/td[4]/button
    Loading
    Click Element    xpath://*[@id="teamMember"]/div
    Click Element     xpath:/html/body/div[1]/div/div/div/div[2]/form/div[2]/div/ul[1]/li/div[3]/span
    Click Element    xpath:/html/body/div[1]/div/div/div/div[3]/div[2]                   

    Go Back
Analytics
    Loading
    Click Element    xpath://*[@id="side-nav"]/ul/li[6]/a/div[1]/i
    Go Back    
    
Services
    Loading
    Click Element    xpath://*[@id="side-nav"]/ul/li[7]/a/div[1]/span    

select team  
   # Loading
   
    #Click Element    xpath://*[@id="ecv-page-header"]/div[2]/div/i
    Loading  
    Wait Until Element Is Visible   name:teamListId    timeout=30 seconds
    Wait Until Element Is Enabled   name:teamListId    timeout=30 seconds 
    Click Element    name:teamListId     
    Wait Until Element Is Visible   xpath://*[@id="ul-1"]/li[2]/md-autocomplete-parent-scope/div/div/div[2]      timeout=50 seconds
    Wait Until Element Is Enabled   xpath://*[@id="ul-1"]/li[2]/md-autocomplete-parent-scope/div/div/div[2]      timeout=50 seconds
    Wait Until Page Does Not Contain    Desktop    
    Click Element    xpath://*[@id="ul-1"]/li[2]/md-autocomplete-parent-scope/div/div/div[2]
    
       
Loading
    Wait Until Page Does Not Contain    Loading 
      
     #/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[3]/div/div[1]/div/div[2]/div/table/tbody/tr[1]/td[1]/a
    