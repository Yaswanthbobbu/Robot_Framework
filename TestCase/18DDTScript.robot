*** Settings ***
Library   SeleniumLibrary
Resource     ../Resources/2resource.robot
Suite Setup  open my browser
Suite Teardown  close my browser
Test Template   Invalid Test

*** Test Cases ***  username    password
Right user empty pass   admin@yourstore.com     ${Empty}
Right user wrong pass   admin@yourstore.com     wert
wrong user empty pass   admin@you.com     ${Empty}
wrong user right pass   admin@yourstre.com     admin


*** keywords ***
Invalid Test
    [Arguments]     ${username}     ${password}
    open login page
    input username      ${username}
    input password      ${password}
    click login button
    error validation






