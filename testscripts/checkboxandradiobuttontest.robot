*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${appurl}   https://the-internet.herokuapp.com/checkboxes
${appurl1}   https://designsystem.digital.gov/components/radio-buttons/
#${appurl1}  https://www.docker.com/
${browser}  chrome
${dropdown}     //select[@name='menu-363']//option





*** Test Cases ***
TechED_TC_0001
    # Launch the techED application
    open browser   ${appurl}    ${browser}
    maximize browser window

    # Checkbox selection
    
    Checkbox Should Not Be Selected    (//input[@type='checkbox'])[1]

    Checkbox Should Be Selected    (//input[@type='checkbox'])[2]


    Select Checkbox    (//input[@type='checkbox'])[1]
    Sleep    2
    Checkbox Should Be Selected    (//input[@type='checkbox'])[1]

    Unselect Checkbox    (//input[@type='checkbox'])[2]
    Sleep    2
    Checkbox Should Not Be Selected    (//input[@type='checkbox'])[2]
    close all browsers

TechED_TC_0002

     # Launch the techED application
    open browser   ${appurl1}    ${browser}
    maximize browser window

    # Radiobutton validation

    Select Frame    //iframe[@class='interactive is-tabbed-standard-height']




    Checkbox Should Be Selected    (//input[@type='checkbox'])[2]


    Select Checkbox    (//input[@type='checkbox'])[1]
    Sleep    2
    Checkbox Should Be Selected    (//input[@type='checkbox'])[1]

    Unselect Checkbox    (//input[@type='checkbox'])[2]
    Sleep    2
    Checkbox Should Not Be Selected    (//input[@type='checkbox'])[2]
    close all browsers



*** Keywords ***
