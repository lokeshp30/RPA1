*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
TC_002 Start Close Browser
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    0.3seconds
    Without Arguments: Enter UserName Email Password and confirm password
    With Arguments: Enter UserName Email Password and confirm password    lokesh2    test@gmail.com    lokesh    lokesh



*** Keywords ***
Without Arguments: Enter UserName Email Password and confirm password
    Input Text    CSS:[name='fld_username']    lokesh
    Input Text    CSS:[name='fld_email']    lokpar30@gmail.com
    Input Text    CSS:[name='fld_password']    lokesh30
    Input Text    CSS:[name='fld_cpassword']    lokesh30

With Arguments: Enter UserName Email Password and confirm password
    [Arguments]    ${userName}    ${email}    ${password}    ${confirmPassword}
    Input Text    CSS:[name='fld_username']    ${userName}
    Input Text    CSS:[name='fld_email']    ${email}
    Input Text    CSS:[name='fld_password']    ${password}
    Input Text    CSS:[name='fld_cpassword']    ${confirmPassword}
    #Close Browser