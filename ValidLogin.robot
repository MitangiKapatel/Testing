*** Settings ***
Library    Selenium2Library    
Resource    ../RobotTastOnStaggingsite/resource.robot


*** Variables ***
${username}   mi12234@gmail.com
${password}   Mi123!123 
${url}     https://staging.ecarevault.com
${DELAY}    0
${dictionary}  chrome  


#*** Test Cases ***
#Valid Login
#   Given browser is opened to login page
#   When user "mi@gmail.com" 
# Then confirm ${username} and pass ${password}
...     
*** Test Cases ***
Login page
    [Tags]  Smoke
    Open Browser  ${url}      browser=${dictionary}
    #Open Browser  ${url}      browser=@{credential}[0]
    When user "mi12234@gmail.com" 
    Log  this test is run by  

Enter password
    wait until page contains element  id:ecv-auth-cnfrm-email     
    confirm-user ${username} and pass ${password}
    
Signup details
    wait until page contains element  xpath://input[@id="emailAddress"]
    creat accout 
    
*** Keywords ***
Browser is opened to login page
    Open browser to login page

User "${username}" 
    Input Text  name:email    ${username}
    Click Button    xpath://button[@class='no-bg-btn ng-isolate-scope']
    
confirm-user ${username} and pass ${password}     
    Input Text    id:ecv-auth-cnfrm-email   ${username}  
    Input Password    xpath://input[@id="ecv-auth-new-password"]    ${password}
    Input Password    name:password-confirm    ${password}
    Click Button    xpath://button[@class='no-bg-btn ng-isolate-scope']           
   
creat accout
    Input Text    //*[@id="firstName"]    xyz    
    Input Text    //*[@id="lastName"]    abc 
    Input Password    //*[@id="password"]   Password123!
    Input Password    //*[@id="confirmPassword"]    Password123!
    Select Checkbox    //*[@name="iagree"]    
    Click Button     //*[@class="btn orange-button ng-isolate-scope"]
    Click Button    text:OK        
           
    
    
 
       