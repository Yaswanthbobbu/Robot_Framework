*** Settings ***
Library     SeleniumLibrary
Resource     ../Resources/2resource.robot
Library     DataDriver  ../TestData/TestData.xlsx   sheet_name=Sheet1
Suite Setup  open my browser
Suite Teardown  close my browser
Test Template   Invalid Test
#Library     SeleniumLibrary
#Resource    ../Resources/2resource.robot
#Library      DataDriver  ../TestData/TestData - copy.csv   sheeet_name=Sheet1
#Suite Setup  Open my browser
#Suite Teardown  close my browser
#Test Template   Invalid Test

*** Test Cases ***
LoginTestwithExcel  using   ${username}     ${password}

*** keywords ***
Invalid Test
    [Arguments]     ${username}     ${password}
    open login page
    input username      ${username}
    input password      ${password}
    click login button
    Error message should be visible






