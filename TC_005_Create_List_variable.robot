*** Settings ***
Library    SeleniumLibrary
Library    Collections

***** Variables ***


*** Test Cases ***
TC_005_Create List Variable
    @{list1}    create list    Hello    2    3    2.5    7
    ${getLength}=   get length    ${List1}
    log to console    ${getLength}
    log to console    ${list1}
    log to console    ${list1[1]}
    log to console    ${list1[3]}
    ${list Data}=   get from list    ${list1}    4
    log to console    ${list Data}