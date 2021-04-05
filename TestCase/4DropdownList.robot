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
    select from list by value       Skills  Analytics
    select from list by index       countries    4
    select from list by value       countries    India
    unselect from list by label   Languages     Dutch


