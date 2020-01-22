*** Settings ***
Library    ImapLibrary

*** Test Cases ***
Email Verification
    Open Mailbox    server=imap.gmail.com    user=kapatelmitangi1113.s@gmail.com    password=mitangi1113
    #${LATEST} =    Wait For Email    sender=drive-shares-noreply@google.com    timeout=300
    #${HTML} =    Open Link From Email    ${LATEST}
    #Should Contain    ${HTML}    Your email address has been updated
    Close Mailbox  
    