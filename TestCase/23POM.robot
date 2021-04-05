*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/3POMresource.robot

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}      chrome
${username}     Admin
${password}     admin123

*** Test Cases ***
POM Testing
    Open my browser     ${url}      ${browser}
    Enter UserName      ${username}
    Enter Password      ${password}
    Click page
    sleep   3
    Verify Successfull login
    close my browser