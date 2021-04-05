*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}          https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
${browser}      Chrome

*** Test Cases ***
LoginTest
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    select frame    packageListFrame   #id name xpath
    click link      org.openqa.selenium.devtools
    unselect frame
    sleep   2

    select frame    packageFrame   #id name xpath
    click link      DevToolsException
    unselect frame
    sleep   2

    select frame    classFrame   #id name xpath
    click link      Tree
    unselect frame
    sleep   2

    close browser