*** Settings ***
Library   RequestsLibrary  
Library    SeleniumLibrary    
Test Template    Post_Data 

*** Variables ***
${base_URL}    https://fakerestapi.azurewebsites.net
${empty}      
${contentlist}  {'FirstName':'1231264', 'LastName':'patel', 'ID':'905', 'IDBook':''}
#${headers}     Create Dictionary     Content-Type="application/json"   accept="application/json"   accept-encoding="gzip, deflate"    accept-language="en-US,en;q=0.8"    user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36"
#${headers}        {'Content-Type':'application/json', 'accept':'application/json', 'accept-encoding':'gzip, deflate', 'accept-language':'en-US,en;q=0.8', 'user-agent':'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36'}


*** Test Cases ***                Firstname           LastName         ID          IDBook      
Valid                             Firstname           Lastname         762         762
Invalid name1                     1231264             myname           1           1
Invalid name2                     123nscb             patel            2           2
Invalid name3                     @cdncjd             shah             3           3
Invalid name4                     @123                patel            4           4
Invalid name5                     123@#%nscb          patel            5           5
Invalid Lastname                  ACB                 abc              6           6           
Invalid Lastname1                 abc132              abc123           7           7      
Invalid Lastname2                 123nscb             123abc           8           8     
Invalid Lastname4                 123nscb             @abc%            9           9    
Invalid Lastname5                 123nscb             123@             10          10    
Invalid Lastname6                 123nscb             abc              11          11 
Invalid Lastname7                 123nscb             abc              12          12  
Invalid ID                        123nscb             abc              abxb        13
Invalid ID1                       nameabc             50384            @$          14
Invalid ID2                       123nscb             abc              0030/3      15s     
Invalid ID3                       name                30000            2000000083764382929283839393994   16
Invalid ID4                       name1               40000          kfi37         17 
Invalid ID                        name1               40000          948yry        18
Same Id                           ncjdnc              jinvfhe           2          12
Invalid bookid                    name1               40000          12            hdywgdu
Invalid bookid                    name1               40000            33          93is2@+-            
Invalid name And salary           12344               abc              29          21      
Empty name                        ${empty}            173649           28          22                         
Empty salary                      mns                 ${empty}         12          74
Empty ID                          mns                 9589589          ${empty}    743
Empty BookId                      mcj                 284749           100         ${empty}       
Empty name+salary                 ${empty}            ${empty}         100         93
Empty name+id                     ${empty}            232133           ${empty}    948
Empty name+Bookid                 ${empty}            575893           120         ${empty}
Empty salary+ID                   mkcnddjv            ${empty}         ${empty}    748
Empty salary+bookID               kjtuitjh            ${empty}         905         ${empty}    
Empty ID+bookid                   njfrj               2833479          ${empty}    ${empty}         
Empty name+salary+bookid          ${empty}            ${empty}         100         ${empty}
Empty name+salary+ID              ${empty}            ${empty}         ${empty}    848
Empty salary+ID+bookid            nvbvh               ${empty}         ${empty}    ${empty}
Empty name+ID+bookid              ${empty}            1203830          ${empty}    ${empty}
Empty ALl                         ${empty}            ${empty}         ${empty}    ${empty}


*** Keywords ***
   
Post_Data
   [Arguments]    ${Firstname}    ${Lsatname}   ${ID}   ${IDBook}      
    &{HEADERS}=    Create Dictionary   Content-Type  application/json    Accept  application/json
    Create Session    Mysession1    ${base_URL}
    #Set Test Variable    &{headers}     Content-Type=application/json   Accept=application/json   accept-encoding=gzip, deflate    accept-language=en-US,en;q=0.8    user-agent=Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36    
    &{data}=    Create Dictionary    ID=${ID}   IDBook=${IDBook}   Firstname =${Firstname}   Lsatname=${Lsatname}    
    ${response1}=  Post Request   Mysession1   api/Authors    data=${data}    headers=${HEADERS}
    ${Status_code}=    Convert To String    ${response1.status_code} 
    Log To Console    ${Status_code}           
    Should Be Equal    ${Status_code}    200
       
    
 
    

 