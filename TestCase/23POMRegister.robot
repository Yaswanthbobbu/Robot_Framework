*** Settings ***
Library   SeleniumLibrary
Resource  ../Resources/4REGresource.robot

*** Variables ***
${url}      http://demo.automationtesting.in/Register.html
${browser}      chrome
${username1}    Yaswanth
${username2}    bobbu
${phoneno}      8686868686
${email}        yaswanthbobbu@gmail.com
${gender}       Male
${country}      India

*** Test Cases ***
Registration Testing
    Open my browser     ${url}     ${browser}
    Enter FirstName     ${username1}
    Enter LastName      ${username2}
    Enter Phone         ${phoneno}
    Enter Email         ${email}
    Enter Gender        ${gender}
    Enter Country       ${country}
    close my browser
