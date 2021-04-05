#Usage of Forloop {Practise}
*** Test Cases ***
ForLoop1
    FOR    ${i}    IN RANGE    1   10
         Log To Console   ${i}
    END


ForLoop2
    FOR    ${i}    IN  1 2 3 4 5 6 7 8 9
       Log To Console   ${i}
    END


ForLoop3
    FOR     ${i}    IN  1  2  3  4    5  6  7  8  9
       Log To Console    ${i}
    END


ForLoop4
    ${items}    create list     1   2   3
    FOR     ${i}    IN  ${Items}
       Log To Console   ${i}
    END


ForLoop5
    ${items}    create list     John    dad     cap
    FOR      ${i}    IN  ${Items}
       Log To Console   ${i}
    END


ForLoop6
    ${items}    create list     1   2   3   4   5   6
    FOR     ${i}    IN  ${Items}
       Log To Console   ${i}
       exit for loop if     ${i}== 4
    END