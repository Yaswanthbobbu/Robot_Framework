*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}          https://opensource-demo.orangehrmlive.com/
#http://demo.guru99.com/test/newtours/
${browser}      Chrome

*** Test Cases ***
CoountLinks
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    LogintoApplication
    close browser

*** keywords ***
LogintoApplication
     ${allLInks}=    get element count     xpath://a
     log to console     ${allLinks}

     ${listitems}     create list
     FOR    ${i}    IN   ${allLinks}
        ${listitems}=  Get Text  xpath:(//a)[${i}]
        log to console  ${listitems}
     END


