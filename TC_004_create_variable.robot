*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Test Cases ***
TC_001 Start Close Browser
    ${Var1}=    set variable    HelloWorld
    log to console  ${Var1}