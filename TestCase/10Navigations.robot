*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}          https://opensource-demo.orangehrmlive.com/
${browser}      Chrome

*** Test Cases ***
Navigation Test
    set selenium speed  1
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    ${loc}=     Get location
    log to console      ${loc}

    go to   https://www.bing.com/
    ${loc}=     Get location
    log to console      ${loc}

    go back
    ${loc}=     Get location
    log to console      ${loc}

    close all browsers





