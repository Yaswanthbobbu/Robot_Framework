*** keywords ***
LogintoApplication      #with no Arguments
    Input text      name:userName     mercury
    Input text      name:password     mercury
    #Click Element    xpath:/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td[2]/div/input
Launch Browser          #with Arguments
    [Arguments]     ${appurl}  ${appbrowser}
    Open Browser    ${appurl}  ${appbrowser}
    Maximize Browser Window
    ${title}=   Get title
    [Return]    ${title}