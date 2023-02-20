*** Settings ***
Resource    ../Resources/CarsApp.robot
Resource    ../Data/InputData.robot
Resource    ../Resources/Common.robot

Test Setup        Common.Begin Web Test
Test Teardown     Common.End Web Test


*** Test Cases ***
Invalid login scenaries should display correct error messages
    [Template]    Test Multiple Login Scenaries
    ${UNREGISTERED_USER}
    ${INVALID_PASSWORD_USER}
    ${BLANK_CREDENTIALS_USER}