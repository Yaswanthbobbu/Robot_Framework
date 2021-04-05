*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}          https://opensource-demo.orangehrmlive.com/
${browser}      Chrome

*** Test Cases ***
LoginTest
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    set selenium speed  1
    LogintoApplication
    close browser

*** keywords ***
LogintoApplication
    Input text      id:txtUsername      Admin
    Input text      id:txtPassword      admin123
    Click Element    xpath://*[@id="btnLogin"]