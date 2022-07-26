*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${appurl}   https://techedtrainings.com/
#${appurl1}  https://www.docker.com/
${browser}  chrome
${dropdown}     //select[@name='menu-363']//option





*** Test Cases ***
TechED_TC_0001
    # Launch the techED application
    open browser   ${appurl}    ${browser}
    maximize browser window

    # How to print all the data from dropdown


    click element  (//a[text()='Contact'])[1]
    wait until page contains  Contact

    ${dropdowncount}      get webelements     ${dropdown}
    FOR    ${apple}    IN    @{dropdowncount}
        ${headerName}   Get Element Attribute    ${apple}    value
        Log To Console  ${headerName}
         
    END
    

    close all browsers

*** Keywords ***
