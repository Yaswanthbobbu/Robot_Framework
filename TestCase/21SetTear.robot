*** Settings ***
Library   SeleniumLibrary
Suite Setup     log to console  opening browser
Suite Teardown      log to console  closing browser
Test Setup      log to console  open app
Test Teardown   log to console  close app

Suite Setup   log to console   open Browser
Suite Teardown   log to console   close Browser
Test Setup      log to console   login
Test Teardown    log to console   log out
#Suite Setup    log to console Open my browser
#Suite Teardown  log to console  close my browser
#Test Set up    log to console  Invalid Test
#Test teardown up  log to console Invalid Test

*** Test Cases ***
TC1 Prepaid1
    log to console  1
TC2 Prepaid2
    log to console  2
TC3 Prepaid3
    log to console  3



