*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}          https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}      Chrome

*** Test Cases ***
Scrolling Test
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    set selenium speed  1
    LogintoApplication
    close browser

*** keywords ***
LogintoApplication
    #execute javascript   window.scrollTo(0,6000)   #based on scroll
    #scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    sleep   3
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
