*** Settings ***
Library    Browser
Resource    ../Tests/Cars.robot
Resource    ../Data/InputData.robot

*** Variables ***

*** Keywords ***
Begin Web Test   
    New Browser    headless=False
    New Page       https://www.cars.com/

End Web Test
    Close Browser    ALL