*** Settings ***
Library  SeleniumLibrary
variables  ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]  ${url}     ${browser}
    Open Browser    ${url}     ${browser}
    Maximize Browser window
Enter UserName
    [Arguments]     ${username}
    Input text      ${text_Username}    ${username}
Enter Password
    [Arguments]     ${password}
    Input text      ${text_password}    ${password}
Click page
    click button    ${btn_signIn}
Verify Successfull login
    title should be  OrangeHRM
close my browser
    close all browsers

