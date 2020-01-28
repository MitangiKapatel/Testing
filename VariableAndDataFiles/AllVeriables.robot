*** Settings ***
Library    SeleniumLibrary    

*** Keywords ***
Loading   
    Wait Until Page Does Not Contain    Loading    
    

*** Variables ***
${LOGIN URL}           https://staging.ecarevault.com/
${BROWSER}             chrome
#google signin
${Gmail login_btn}     xpath://*[@id="gglCustomBtn"]
${Email TextField}     xpath://*[@id="identifierId"]
${Email Next btn}      xpath://*[@class="RveJvd snByac"]
${Password TextField}  xpath://*[@class="whsOnd zHQkBf"]
${Password Next btn}   xpath://*[@class="RveJvd snByac"]
#vault key
${ecvPageTitle}        title:eCareVault
${vaultkey}            xpath://*[@id="password"]
#creat new team
${Team Creation Logo}  xpath://*[@id="ecv-page-header"]/div[3]/nav/button/div/i
${Team Checkbox}       id:chk-team-type
${Team_Firstname}      id:firstName
${Team Lastname}       id:lastName
${Team BD}             id:birthDate
${Radio Btn Name}      chk-team-type
${Save Team}           xpath://*[@id="side-nav"]/ul/li[1]/a/div[1]/i
#creat team member
${Team_sidebar}        xpath://*[@id="step3"]/a/div[1]/i
#${Add TeamMember Btn}  xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[1]/div[2]/button[2]
${Add TeamMember Btn}  xpath://*[@class="add-member-button"]/button[2]
${TeamMember Email}    xpath://*[@id="autoEmail"]/div/input
${TeamMember Name}     xpath://*[@id="autoName"]/div/input
${TeamRole List}       xpath://*[@id="ddlTeamRole"]/div/span
${Advocate Role}       xpath://*[@class="stop-click ng-binding ng-scope" and text()='Advocate']
${Assistant Role}      xpath://*[@class="stop-click ng-binding ng-scope" and text()='Assistant']
${Team Invite Btn}     id:add-tm-invite
${Send Invitation}     xpath://*[@daid="invite-send-invite-btn"]
#Document
${Document Sidebar}    xpath://*[@id="side-nav"]/ul/li[3]/a/div[1]/i
${FolderOption}        id:folder-options-popover
${SelectOpen}          xpath://*[@daid="Open-link"]
${Rename}              xpath://*[@daid="Rename-link"]
${Move}                xpath://*[@daid="Move-link"]
${Upload Btn}          name:documentFile
${Drag&Drop Area}      xpath://*[@id="mobile_upload_file"]
${Upload FilePath}     /home/jeavio37/Documents/task.odt
${Final Upload}        xpath://*[@daid="document-upload-btn"]

#Discussion
${disscussionIcon}     xpath://*[@id="side-nav"]/ul/li[4]/a/div/i
${DiscussionBtn}       xpath://*[@daid="start-discussion-btn"]
${DiscussionTitle}     name:title
${DiscussionMsg}       name:message
${MsgEditer}           xpath://*[@id="message-editor"]/div/div[2]/div[1] 
${CreatDisBtn}         xpath://*[@daid="discussion-start-btn"]


#Forms
${formSidebar}         xpath://*[@id="side-nav"]/ul/li[5]/a/div[1]/i
${AvailableForm}       xpath://*[@daid="available-forms-tab"]
${firstForm}           xpath://*[@class="ng-binding" and text()='2018-2019 Emergency Information for Transporters']
${AssignBtn}           xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[3]/div/div[1]/div/div[2]/div/table/tbody/tr[1]/td[4]/button
${TeamMemSectList}     xpath://*[@id="teamMember"]/div
${ClickOnFirstTeam}    xpath:/html/body/div[1]/div/div/div/div[2]/form/div[2]/div/ul[1]/li/div[3]/span
${finalAssign}         xpath://*[@daid="form-assign-btn"]

#Services
${Services Sidebar}    xpath://*[@id="side-nav"]/ul/li[7]/a/div[1]/span


#Select Team
${TeamSectList}        name:teamListId
#${SelcTeamHeaderList}  xpath://*[@class="select-choice list-item-padding ng-scope"]/div[1]/div
${SelcTeamHeaderList}  xpath://div[@class="ellipsis padding-top-8" and text()='Firstname Lastname']

#Logout
${HaderUserName}       xpath://*[@id="ecv-page-header"]/div[3]/div[1]/nav/ul/li/a/span/span/i
${Logout}              xpath://*[@id="step4"]/li[7]/a/span


${Anlytics Sidevar}    xpath://*[@id="side-nav"]/ul/li[6]/a/div[1]/i