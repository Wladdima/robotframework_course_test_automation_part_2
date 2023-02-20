*** Settings ***
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Login With Many Invalid Credentials
    [Arguments]   ${InvalidLoginScenaries}

    FOR    ${LoginScenario}    IN    @{InvalidLoginScenaries}
        Navigate to Sign In Page    
        Attempt Login           ${LoginScenario}
        Verify Error Message    ${LoginScenario}
    END

Test Multiple Login Scenaries
    [Arguments]    ${Credentials}
    Navigate to Sign In Page
    Attempt Login    ${Credentials}
    Verify Login Page Error Message    ${Credentials}

Navigate to Sign In Page
    SignIn.Navigate To

Attempt Login
    [Arguments]  ${Credentials}
    SignIn.Enter Credentials  ${Credentials}
    SignIn.Click Submit
    Sleep  1s

Verify Login Page Error Message
    [Arguments]    ${Credentials}
    SignIn.Verify Error Message    ${Credentials}
