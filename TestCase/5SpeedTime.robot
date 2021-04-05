*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}          https://opensource-demo.orangehrmlive.com/
${browser}      Chrome

*** Test Cases ***
LoginTest
    ${speed}=  Get Selenium speed
    ${time}=  Get Selenium timeout
    log to console  ${time}
    log to console  ${speed}
    Open Browser         ${url}       ${browser}
    Maximize Browser Window
    wait until page contains    Username : Admin | Password : admin123  #5
    set selenium timeout        10
    #sleep   4
    #set selenium speed  2
    LogintoApplication
    close browser

*** keywords ***
LogintoApplication
    Input text      id:txtUsername      Admin
    Input text      id:txtPassword      admin123
    Click Element    xpath://*[@id="btnLogin"]


