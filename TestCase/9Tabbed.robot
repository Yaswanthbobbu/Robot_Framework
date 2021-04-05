*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}          http://demo.automationtesting.in/Windows.html
${browser}      Chrome

*** Test Cases ***
LoginTest
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    click element      xpath://*[@id="Tabbed"]/a/button
    Switch Window  title=SeleniumHQ Browser Automation
    sleep   1
    #Switch Window   title=Frames & windows
    click link      Documentation
    sleep   3
    close all browsers