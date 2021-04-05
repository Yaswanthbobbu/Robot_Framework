*** Settings ***
Library   SeleniumLibrary
Resource  ../Resources/resource.robot
Library  SeleniumLibrary
Resource  C:/Users/bobbu.yaswanth/PycharmProjects/RobotFramework/Resources/resource.robot

*** Variables ***
${url}          http://demo.guru99.com/test/newtours/
${browser}      Chrome

*** Test Cases ***
LoginTest
    ${Pagetitle}=   Launch Browser      ${url}  ${browser}
    log   ${Pagetitle}
    LogintoApplication
    close browser