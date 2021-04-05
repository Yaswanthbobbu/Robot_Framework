#--include=Sanity
#-i Sanity   -i Regression
#-e Regression

*** Test Cases ***
TC1 User Registration Test
    [Tags]  Sanity
    log to console  user registration
    log to console  user registration complete
TC2 Login Test
    [Tags]  Regression
    log to console  this is login test
    log to console  this is logout test
TC3 Change settings
    [Tags]  Regression
    log to console  change user settings
    log to console  change setting complete
TC4 Logout Test
    [Tags]  Sanity
    log to console  log out test complete