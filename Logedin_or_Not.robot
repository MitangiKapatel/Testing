*** Settings ***
Library    Selenium2Library    
Resource    resource.robot
Resource    login.robot
Resource    home_Page.robot
Resource    select.robot
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
Checking for the homepage
    goto homepage 
    create new team
    select team
    #create new team member
    #checking for the document
    Discussions
    Forms
    Analytics
    Services
    Logout
     
login with valid credential
    login
       
       

    
    #Get Text    xpath://*[@class="subject-name ng-binding"]  