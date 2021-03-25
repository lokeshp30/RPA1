*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
TC_001 Start Close Browser
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    0.3seconds
    Input Text    CSS:[name='fld_username']    lokesh
    Input Text    CSS:[name='fld_email']    lokpar30@gmail.com
    Input Text    CSS:[name='fld_password']    lokesh30
    Input Text    CSS:[name='fld_cpassword']    lokesh30
    Select Radio Button   add_type    home
    #Select Radio Button    CSS:[name='add_type'][value='office']    office
    Select Checkbox    name:terms
    Select From List By Index    name:sex    1
    Select From List By Value    name:sex    2
    Select From List By Label    name:sex    Female



    #Close Browser