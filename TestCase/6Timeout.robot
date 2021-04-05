*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}          https://opensource-demo.orangehrmlive.com/
${browser}      Chrome

*** Test Cases ***
LoginTest
    ${Implicit} =   get selenium implicit wait
    log to console  ${Implicit}
    Open Browser         ${url}       ${browser}
    Maximize Browser Window
    Input text      id:txtUsername    Admin
    set selenium implicit wait  5
    Input text      id:txtPassword      admin123
    Click Element    xpath://*[@id="btnLogin"]
    close browser

*** keywords ***




