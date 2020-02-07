*** Settings ***
Library   RequestsLibrary  
Library    SeleniumLibrary    

*** Variables ***
${base_URL}    https://fakerestapi.azurewebsites.net
${empty}      


*** Test Cases ***
Get_Info_Of_All_Data

    Create Session    mysession    ${base_URL}
    ${response}=  Get Request    mysession    api/Authors
    Log To Console    ${response.content}
    Log To Console    ${response.status_code}
    
Post_Data
   
    &{HEADERS}=    Create Dictionary   Content-Type  application/json    Accept  application/json
    Create Session    Mysession1    ${base_URL}
    #Set Test Variable    &{headers}     Content-Type=application/json   Accept=application/json   accept-encoding=gzip, deflate    accept-language=en-US,en;q=0.8    user-agent=Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36    
    &{data}=    Create Dictionary    ID=765   IDBook=765   Firstname =Firstname   Lsatname=Lsatname    
    ${response1}=  Post Request   Mysession1   api/Authors    data=${data}    headers=${HEADERS}
    ${Status_code}=    Convert To String    ${response1.status_code} 
    Log To Console    ${Status_code}           
    Should Be Equal    ${Status_code}    200 
      
Put_Data
    Create Session    Mysession3    ${base URL}  
    &{HEADERS1}=    Create Dictionary   Content-Type  application/json    Accept  application/json  
    ${data1}=   Create Dictionary   ID=765  IDBook=765   Firstname=newfirstname   Lastname=newlastname
    ${response2}=   Put Request    Mysession3    /api/Authors/765   data=${data1}   headers=${HEADERS1}
    ${Status_code}=    Convert To String    ${response2.status_code} 
    Log To Console    ${Status_code}           
    Should Be Equal    ${Status_code}    200
    Log To Console    ${response2.content}  
    ${content}=    Convert To String    ${response2.content}
    Should Contain    ${content}    newfirstname      
 
    
Delete_data
    Create Session    Mysession4    ${base URL}  
    ${response3}=   Delete Request    Mysession4    /api/Authors/765    
    ${Status_code}=    Convert To String    ${response3.status_code} 
    Log To Console    ${Status_code}  
  
Get_deleted_data_Info
    Create Session    mysession    ${base_URL}
    ${response}=  Get Request    mysession    api/Authors/765
    Log To Console    ${response.content}
    Log To Console    ${response.status_code}
      
         
    