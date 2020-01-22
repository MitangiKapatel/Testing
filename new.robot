*** Settings ***
Library    Selenium2Library    
Resource    resource.robot

*** Test Cases ***
Check for the loging
    Open the url   
    login with valid credential
     
    
*** Keywords ***
open the url
    Open browser to login page
    
login with valid credential
    wait until page contains element  xpath://*[@id="gglCustomBtn"] 
    