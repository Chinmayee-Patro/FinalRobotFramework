*** Settings ***
Library  SeleniumLibrary


*** Variables ***

${appurl}   https://codepen.io/RobotsPlay/pres/pyNLdL
${browser}  chrome

*** Test Cases ***
TC_0001
    open browser    ${appurl}  ${browser}

    # Maximize browser
    maximize browser window
    # Checkbox selection
    
    Select Frame    result

    Click Element    //label[@class='dropdown-label']

    Checkbox Should Not Be Selected    //input[@value='Selection 3']
    Select Checkbox    //input[@value='Selection 3']
    Sleep    1
    
    Checkbox Should Not Be Selected    //input[@value='Selection 5']
    Select Checkbox    //input[@value='Selection 5']
    Sleep    1

    Checkbox Should Not Be Selected    //input[@value='Selection 2']
    Select Checkbox    //input[@value='Selection 2']
    Sleep    1

    Unselect Checkbox    //input[@value='Selection 3']
    Sleep    1
    Unselect Checkbox    //input[@value='Selection 5']
    Sleep    1
    Unselect Checkbox    //input[@value='Selection 2']
    Sleep    1

    close all browsers




*** Keywords ***
