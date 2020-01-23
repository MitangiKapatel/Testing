*** Settings ***
Library     Selenium2Library 
Resource    RedirectToURL.robot   
Resource    Login.robot
Resource    HomePage.robot
Resource    CreateNewTeam.robot
Resource    CreateNewTeamMember.robot
Resource    TeamSelection.robot
Resource    FormAssign.robot
Resource    Documet.robot
Resource    Discussion.robot
Resource    Analytics.robot
Resource    Services.robot
Resource    Logout.robot
Suite Teardown    Close All Browsers
Default Tags    sanity

*** Test Cases ***
Success Login
    [Tags]  smoke
    login with valid credential
    
User Loged in Or Not
    [Tags]  example
    Goto homepage and check for the valid Username 
    
#Login Fails With anothorized Credential
#     InvalidLogin

Create Team Success
    create new team
    
Create Team Member Success
    select team
    create new team member
   
Upload Document Success
    checking for the document

Starting the Discussion Success
    Start Discussions
     
Verifing the Forms Are Listed In Available Forms
     Verifing Forms
     
Verifing the Analytics
    Checking Analytics
     
Checking for the Services
    Checking Services
     
Logout Success
     Logout
     


*** Keywords ***       
login with valid credential
    Open browser and redirect to login page
    login 
    

     
    
    
    
    
    
    
    
    

       
       

    
    