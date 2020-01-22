*** Settings ***
Library    Selenium2Library 
Resource    Open_Url.robot   
Resource    login.robot
Resource    home_Page.robot
Resource    create_new_team.robot
Resource    Create_Team_member.robot
Resource    Team_Selection.robot
Resource    Form_Assign.robot
Resource    Documet.robot
Resource    Discussion.robot
Resource    Analytics.robot
Resource    Services.robot
Resource    Logout.robot
#Suite Teardown    Close All Browsers

*** Test Cases ***
Check for the loging
    Open the url   
    login with valid credential
    Checking for the homepage
     
    
*** Keywords ***
open the url
    Open browser to login page
         
login with valid credential
    login
    
Checking for the homepage
    goto homepage 
    create new team
    select team
    create new team member
    checking for the document
    Discussions
    Forms
    Analytics
    Services
    Logout

       
       

    
    