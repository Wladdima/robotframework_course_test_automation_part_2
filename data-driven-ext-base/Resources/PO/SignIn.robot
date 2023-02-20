*** Settings ***
Library    Browser
Resource    ../../Tests/Cars.robot


*** Variables ***
${MENU_BUTTON} =            css=button.nav-user-menu-button
${SIGN_IN_BUTTON} =         [data-component="sign-in-start"]
${SIGN_IN_EMAIL} =          css=#auth-modal-email
${SIGN_IN_PASSWORD} =       css=#auth-modal-current-password
${LOGIN_SUBMIT_BUTTON} =    css=ep-button[type='submit'] > button[type='submit']

*** Keywords ***
Navigate To
    Click           ${MENU_BUTTON}
    Click           ${SIGN_IN_BUTTON}
    Sleep           3s

Enter Credentials
    [Arguments]  ${Credentials}
    Type Text  ${SIGN_IN_EMAIL}  ${Credentials[0]}
    Type Text  ${SIGN_IN_PASSWORD}  ${Credentials[1]}
    #run keyword unless  '${Credentials.Password}' == '#BLANK'  

Click Submit
    Click    ${LOGIN_SUBMIT_BUTTON}

Verify Error Message
    [Arguments]  ${Credentials}
    Get Text    ${Credentials[2]}  contains  ${Credentials[3]}

Clear Input Fields
    Clear Text  ${SIGN_IN_EMAIL}
    Clear Text  ${SIGN_IN_PASSWORD}
