*** Settings ***
Library    Browser


*** Variables ***

*** Keywords ***


*** Test Cases ***
Go To Sign In Form    
    New Browser    headless=False
    New Page       https://www.cars.com/
    Click          css=button.nav-user-menu-button
    Click          [data-component="sign-in-start"]
    Type Text      css=#auth-modal-email               vp@email.com
    Type Text      css=#auth-modal-current-password    12345678
    Click          css=ep-button[type='submit'] > button[type='submit']
    ${ErrorText}   Get Text    css=p.sds-notification__desc
#   Get Text       css=div.sds-field[slot="emailField"] > span.sds-helper-text    contains    Enter your email.
    Log            ${ErrorText}   
