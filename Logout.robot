*** Settings ***
Library    Selenium2Library    

*** Keywords ***
Logout
    Click Element    xpath://*[@id="ecv-page-header"]/div[3]/div[1]/nav/ul/li/a/span/span/i
    Click Element    xpath://*[@id="step4"]/li[6]/a/span
        