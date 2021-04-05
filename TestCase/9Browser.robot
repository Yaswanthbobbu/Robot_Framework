*** Settings ***
Library   SeleniumLibrary

*** Variables ***


*** Test Cases ***
LoginTest
    Open Browser    https://www.google.com/   chrome
    Maximize Browser Window
    sleep  2

    Open Browser    https://www.bing.com/   chrome
    Maximize Browser Window
    sleep  2

    switch browser  1
    ${title1}=  Get title
    log to console     ${title1}

    switch browser  2
    ${title2}=  Get title
    log to console     ${title2}


    close all browsers