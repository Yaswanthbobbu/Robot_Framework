*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}          https://docs.google.com/forms/d/1W9ynzcUCXe2kVd2ZUSdsF9NVGT5EY1nDvMemMLqKiDQ/viewform?edit_requested=true
${browser}      Chrome

*** Test Cases ***
LoginTest
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    LogintoApplication
    close browser

*** keywords ***
LogintoApplication
    Input text      xpath://*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div[1]/div[2]/div[1]/div/div[1]/input      bobbu.yaswanth@enzen.com
    Click Element       xpath:    select Radio Button     xpath://body/div[1]/div[2]/form[1]/div[2]/div[1]/div[2]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/span[1]/div[1]/div[1]/label[1]/div[1]/div[1]/div[1]/div[3]/div[1]       xpath://*[@id="mG61Hd"]/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div/span/div/div[1]/label/div/div[2]/div/span
    Input text      xpath://*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div/div[2]/div/div[1]/div/div[1]/input
    #Click Element   xpath://*[@id="mG61Hd"]/div[2]/div/div[3]/div[1]/div/div[2]/span/span