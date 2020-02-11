*** Settings ***
Library     SeleniumLibrary 
Resource    ../Resource Files/RedirectToURL.robot   
Resource    ../Resource Files/Login.robot
Resource    ../Resource Files/HomePage.robot
Resource    ../Resource Files/CreateNewTeam.robot
Resource    ../Resource Files/CreateNewTeamMember.robot
Resource    ../Resource Files/TeamSelection.robot
Resource    ../Resource Files/FormAssign.robot
Resource    ../Resource Files/Documet.robot
Resource    ../Resource Files/Discussion.robot
Resource    ../Resource Files/Analytics.robot
Resource    ../Resource Files/Services.robot
Resource    ../Resource Files/Logout.robot
       
#Suite Teardown    Close All Browsers
Default Tags    sanity

*** Test Cases ***
Success Login
    [Tags]  smoke
    Open browser and redirect to login page
    login 
User Loged in Or Not
    [Tags]  example
    Goto homepage and check for the valid Username 
    
#Login Fails With anothorized Credential
#     InvalidLogin

# Create Team Success
    # create new team
    
Create Team Member Success
    select team
  #  create new team member
   
# Upload Document Success
#    checking for the document

# Starting the Discussion Success
    # Start Discussions
     
 Verifing the Forms Are Listed In Available Forms
      Verifing Forms
     
# Verifing the Analytics
    # Checking Analytics
     
# Checking for the Services
    # Checking Services
     
# Logout Success
     # Logout
     



     
    

     
    
    
    
    
    
    
    
    

       
       

    
    