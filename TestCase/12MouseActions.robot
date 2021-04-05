*** Settings ***
Library   SeleniumLibrary

*** Variables ***

*** Test Cases ***
MouseActions
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html  Chrome
    Maximize Browser Window
    set selenium speed  1
    open context menu     xpath:/html/body/div/section/div/div/div/p/span

    go to  http://testautomationpractice.blogspot.com/
    double click element   xpath://*[@id="HTML10"]/div[1]/button

    go to   http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Drag And Drop   id:box1     id:box101
    Drag And Drop   id:box2     id:box102
    Drag And Drop   id:box3     id:box103
    Drag And Drop   id:box4     id:box104
    Drag And Drop   id:box5     id:box105
    Drag And Drop   id:box6     id:box106

    Close Browser



*** keywords ***




