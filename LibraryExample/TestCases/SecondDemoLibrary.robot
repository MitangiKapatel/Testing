*** Settings ***
Library    SeleniumTest.PythonOrgSearch
Library    SeleniumTest
        
Library    SeleniumLibrary    

     

*** Test Cases ***
Use InheritSeleniumLibrary Open Browser Keyword
    # SecondLibrary.Set Up    self
    # SecondLibrary.Test Search In Python Org    self
    # Open Browser    self    google
    # ${capabilities} =    SecondLibrary.Keyword  Get Browser Desired Capabilities
    # Log    ${capabilities}
    # [Teardown]    SecondLibrary.Keyword    Close browser
     Open My Browser  "gglCustomBn"
   
     # Get Web Element By Xpath    //*[name="uid"]   
     #Test Search In Python Org
     #Tear Down
  

 


   