*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}          http://testautomationpractice.blogspot.com/
${browser}      Chrome

*** Test Cases ***
Handling Alerts
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    LogintoApplication
    close browser

*** keywords ***
LogintoApplication
    click element   xpath://*[@id="HTML9"]/div[1]/button
    sleep   2
    #handle alert    accept
    #handle alert    dismiss
    alert should be present    Press a button!
    alert should not be present  Press a button
    handle alert    leave


