
*** Variables ***
# Configuration
${BROWSER} =  chrome
${ENVIRONMENT} =  prod
&{BASE_URL}  dev=https://dev.cars.com/  qa=https://qa.cars.com/  prod=https://www.cars.com/
${ERROR_MESSAGE_EMAIL_TEXT} =    css=div.sds-field[slot="emailField"] > span.sds-helper-text
${ERROR_LOGIN_NOT_RECOGNIZED_TEXT} =    css=p.sds-notification__desc
${INVALID_CREDENTIALS_PATH_CSV} =    C:\\development\\robot-scripts\\robotframework_course_test_automation_part_2-1\\data-driven-ext-base\\Data\\Users.csv

# Input Data
#&{UNREGISTERED_USER}  Email=admin@robotframeworktutorial.com  Password=12345678  ErrorMessage=${ERROR_LOGIN_NOT_RECOGNIZED_TEXT}    ExpectedErrorMessage=Your email or password was not recognized. Try again soon.
#&{INVALID_PASSWORD_USER}  Email=bryan@bryanlamb.com  Password=TestPassword!  ErrorMessage=${ERROR_LOGIN_NOT_RECOGNIZED_TEXT}    ExpectedErrorMessage=Your email or password was not recognized. Try again soon.
#&{BLANK_CREDENTIALS_USER}  Email=${EMPTY}  Password=${EMPTY}  ErrorMessage=${ERROR_MESSAGE_EMAIL_TEXT}    ExpectedErrorMessage=Enter your email.
