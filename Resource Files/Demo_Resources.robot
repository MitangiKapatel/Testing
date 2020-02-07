*** Settings ***
Library    ../MyLibrary.py       

*** Keywords ***

Verify addition of ${operand1} and ${operand2} is ${result}
    [Documentation]    Verify addition of two integers
    ${calculated_result}=   MyLibrary.Add   ${operand1}  ${operand2}  
    Should Be Equal as Integers  ${calculated_result}  ${result}

Verify subtraction of ${operand1} and ${operand2} is ${result}
    [Documentation]    Verify subtraction of two integers
    ${calculated_result}=  MyLibrary.Subtract  ${operand1}  ${operand2}  
    Should Be Equal as Integers  ${calculated_result}  ${result}

Verify multiplication of ${operand1} and ${operand2} is ${result}
    [Documentation]    Verify multiplication of two integers
    ${calculated_result}=  MyLibrary.Multiply  ${operand1}  ${operand2}  
    Should Be Equal as Integers  ${calculated_result}  ${result}

Verify division of ${operand1} and ${operand2} is ${result}
    [Documentation]    Verify division of two integers
    ${calculated_result}=  MyLibrary.Divide  ${operand1}  ${operand2}  
    Should Be Equal as Integers  ${calculated_result}  ${result}