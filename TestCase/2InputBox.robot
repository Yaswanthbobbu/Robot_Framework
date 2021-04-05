*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}          https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F

*** Test Cases ***
TestInputBox
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    title should be     Your store. Login
    ${email_text}   set variable  id:Email

    element should be visible   ${email_text}
    element should be enabled   ${email_text}

    clear Element text  ${email_text}
    sleep   3
    Input Text  ${email_text}   admin@yourstore.com
    sleep   5

    close browser

*** keywords ***
