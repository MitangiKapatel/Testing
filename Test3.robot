*** Settings ***

Library  Selenium2Library
Suite Setup   Log  Inside test suite
Test Teardown     Close Browser
Default Tags  Sanity

*** Test Cases ***
First
    [Tags]  Smoke
    Open Browser  ${url}      browser=&{dictionary}[browser]
    #Open Browser  ${url}      browser=@{credential}[0]
    Log  this test is run by  
    
second
    [Tags]  Smoke
    Open Browser  ${url}      browser=&{dictionary}[browser]
    #Open Browser  ${url}      browser=@{credential}[0]
    Log  this test is run by  
    Set Tags  Regrassion
    
    
*** Variables ***
${url}   https://staging.ecarevault.com 
#scalar
@{credential}  chrome  chrome
#list
&{dictionary}  browser=chrome