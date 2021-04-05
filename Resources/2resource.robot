*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}      Chrome

*** keywords ***
open my browser
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
open login page
    go to   ${url}
input username
    [Arguments]     ${username}
    clear element text  id:Email
    Input text      id:Email    ${username}
input password
    [Arguments]     ${password}
    clear element text  id:Password
    Input text      id:Password    ${password}

click login button
    click element    xpath:/html[1]/body[1]/div[6]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[3]/button[1]
click logout
    click link  Logout
error validation
    Page should contain     Login was unsuccessful.
success validation
    page should contain Dashboard
close my browser
    close all browsers
