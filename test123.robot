*** Settings ***
Library    Selenium2Library
Default Tags  First
Test Teardown     Close Browser

*** Test Cases ***
Simple
    [Tags]  second
    [Documentation]    Simple documentation
    No Operation

Formatting
    [Tags]  Third
    [Documentation]    *This is bold*, _this is italic_  and here is a link: http://robotframework.org
    No Operation

Variables
    [Documentation]    Executed at ${HOST} by ${USER}
    No Operation

Splitting
    [Documentation]    This documentation    is split    into multiple columns
    No Operation

Many lines
    [Documentation]    Here we have
    ...                an automatic newline
    No Operation
    

      
    
  
    
 