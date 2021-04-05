*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}          http://demo.automationtesting.in/Register.html
${browser}      Chrome

*** Test Cases ***
TestRadio button
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    set selenium speed  2
    LogintoApplication
    close browser

*** keywords ***
LogintoApplication
    select radio button      radiooptions      FeMale
    select checkbox      Cricket
    select checkbox       Movies

    unselect checkbox   Cricket


