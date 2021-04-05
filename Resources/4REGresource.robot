*** Settings ***
Library   SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]  ${url}     ${browser}
    Open Browser    ${url}     ${browser}
    Maximize Browser window

Enter FirstName
    [Arguments]     ${username1}
    Input text      ${txt_firstname}    ${username1}
Enter LastName
    [Arguments]     ${username2}
    Input text      ${txt_lastname}    ${username2}
Enter Phone
    [Arguments]     ${phoneno}
    Input text      ${txt_phone}    ${phoneno}
Enter Email
    [Arguments]     ${email}
    Input text      ${txt_email}    ${email}
Enter Gender
    [Arguments]     ${gender}
    select from list by value     ${drp_sex}    ${gender}
Enter Country
    [Arguments]     ${country}
    select from list by value      ${drp_country}    ${country}
Click page
    click button    ${btn_submit}

Verify Successfull login
    page should contain  Thank you for registration
close my browser
    close all browsers