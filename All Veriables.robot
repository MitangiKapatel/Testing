*** Settings ***
Library    Selenium2Library    

*** Keywords ***
Loading
    Wait Until Page Does Not Contain    Loading    timeout=30seconds

*** Variables ***
${LOGIN URL}           https://staging.ecarevault.com/
${BROWSER}             chrome
#google signin
${google_login_btn}    xpath://*[@id="gglCustomBtn"]
${email_text}          xpath://*[@id="identifierId"]
${email next btn}      xpath://*[@class="RveJvd snByac"]
${password text}       xpath://*[@class="whsOnd zHQkBf"]
${password next btn}   xpath://*[@class="RveJvd snByac"]
#vault key
${ecvPageTitle}        title:eCareVault
${vaultkey}            xpath://*[@id="password"]
#creat new team
${TeamCreationLogo}    xpath://*[@id="ecv-page-header"]/div[3]/nav/button/div/i
${TeamCheckbox}        id:chk-team-type
${Team_Firstname}      id:firstName
${Team Lastname}       id:lastName
${Team BD}             id:birthDate
${SaveTeam}            xpath://*[@id="side-nav"]/ul/li[1]/a/div[1]/i
#creat team member
${Team_sidebar}        xpath://*[@id="step3"]/a/div[1]/i
${AddTeamMemBtn}       xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[1]/div[2]/button[2]
${TeamMemEmail}        xpath://*[@id="autoEmail"]/div/input
${TeamMemName}         xpath://*[@id="autoName"]/div/input
${TeamRolList}         xpath://*[@id="ddlTeamRole"]/div/span
${AdvocateRol}         xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[2]/div/md-virtual-repeat-container/div/div[2]/div[2]/div/div[3]/form/div[1]/fieldset/div/div/div[1]/div[3]/div/span/div[2]/ul[1]/li/div[4]/span/span
${AssistantRol}        xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[2]/div/md-virtual-repeat-container/div/div[2]/div[2]/div/div[3]/form/div[1]/fieldset/div/div/div[1]/div[3]/div/span/div[2]/ul[1]/li/div[5]/span
${TeamInviteBtn}       id:add-tm-invite
${sendInvitation}      xpath:/html/body/div[1]/div/div/div/form/div/div[3]/button[2]
#Document
${docu Sidebar}        xpath://*[@id="side-nav"]/ul/li[3]/a/div[1]/i
${FolderOption}        id:folder-options-popover
${selectOpen}          xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div/md-virtual-repeat-container/div/div[2]/div/div[3]/div/div/div/div/div/div/div[2]/div[2]/div[2]/div[2]/div[2]/div/ul/li[1]/div/span

${uploadBtn}           name:documentFile
${drag$dropArea}       xpath://*[@id="mobile_upload_file"]
${UploadfilePath}      /home/jeavio37/Documents/task.odt
${finalUpload}         xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div/div[3]/div/div/div[2]/div[1]/div/button[2]

#Discussion
${disscussionIcon}     xpath://*[@id="side-nav"]/ul/li[4]/a/div/i
${DiscussionBtn}       xpath://*[@id="discussion-list"]/div[2]/div[3]/div/button
${DiscussionTitle}     name:title
${DiscussionMsg}       name:message
${MsgEditer}           xpath://*[@id="message-editor"]/div/div[2]/div[1] 
${CreatDisBtn}         xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div/div[3]/div/div/div/div[2]/div/button[2]


#Forms
${formSidebar}         xpath://*[@id="side-nav"]/ul/li[5]/a/div[1]/i
${AvailableForm}       xpath://*[@daid="available-forms-tab"]
${firstForm}           xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[3]/div/div[1]/div/div[2]/div/table/tbody/tr[1]/td[1]/a
${AssignBtn}           xpath:/html/body/div[1]/div/div[5]/div[1]/div[2]/div/div[3]/div/div[1]/div/div[2]/div/table/tbody/tr[1]/td[4]/button
${TeamMemSectList}     xpath://*[@id="teamMember"]/div
${ClickOnFirstTeam}    xpath:/html/body/div[1]/div/div/div/div[2]/form/div[2]/div/ul[1]/li/div[3]/span
${finalAssign}         xpath:/html/body/div[1]/div/div/div/div[3]/div[2]


#Select Team
${TeamSectList}        name:teamListId
${SelcTeamHeaderList}  xpath://*[@daid="Firstname Lastname"]/div[1]/div

#Logout
${HaderUserName}       xpath://*[@id="ecv-page-header"]/div[3]/div[1]/nav/ul/li/a/span/span/i
${Logout}              xpath://*[@id="step4"]/li[7]/a/span
