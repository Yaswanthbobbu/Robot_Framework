*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}          http://testautomationpractice.blogspot.com/
${browser}      Chrome

*** Test Cases ***
LoginTest
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    LogintoApplication
    close browser

*** keywords ***
LogintoApplication
     ${rows}=   get element count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
     ${cols}=   get element count   //*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th
     log to console     ${rows}
     log to console     ${cols}

     ${data}=   get text    //*[@id="HTML1"]/div[1]/table/tbody/tr[3]/td[3]
     log to console     ${data}

     table column Should Contain  //*[@name="BookTable"]  2   Mukesh
     table row should contain     //*[@name="BookTable"]  5   Selenium
     table cell should contain    //*[@name="BookTable"]  5   2   Mukesh
     table header should contain  //*[@name="BookTable"]  Price

     close browser

