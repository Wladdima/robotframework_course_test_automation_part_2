*** Settings ***
Resource    ../Resources/CarsApp.robot
Resource    ../Data/InputData.robot
Resource    ../Resources/Common.robot
Resource    ../Resources/DataManager.robot

Test Setup        Common.Begin Web Test
Test Teardown     Common.End Web Test


*** Test Cases ***
Should see correct error messages with invalid logins
    ${InvalidLoginScenaries} =    DataManager.Get CSV Data    ${INVALID_CREDENTIALS_PATH_CSV}
    CarsApp.Login With Many Invalid Credentials    ${InvalidLoginScenaries}


#Invalid login scenaries should display correct error messages
#   [Template]    Test Multiple Login Scenaries
#   ${UNREGISTERED_USER}
#    ${INVALID_PASSWORD_USER}
#    ${BLANK_CREDENTIALS_USER}