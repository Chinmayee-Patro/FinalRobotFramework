*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${appurl}   https://www.google.com/
${appurl1}  https://twitter.com/
#${appurl1}  https://www.docker.com/
${browser}  chrome
${dropdown}     //select[@name='menu-363']//option





*** Test Cases ***
TechED_TC_0001
    # Launch the techED application
    open browser   ${appurl}    ${browser}
    maximize browser window

    ${pagetitle}    Get Title
    Log To Console    Parent URL's title is: ${pagetitle} 

    # How to open new tab
    Execute Javascript      window.open()

    # Swich to new window
    Switch Window   locator=NEW

    # How to open a URL in a new tab

    Go To    ${appurl1}
    Sleep    5
    ${pagetitle1}    Get Title
    Log To Console    New URL's title is: ${pagetitle1}
    Wait Until Page Contains   Happening now
    Click Element    //span[contains(.,'About')]
    Wait Until Page Contains    About

   # How to close the new tab

    Close Window
    Sleep    3

    # Come back to parent tab

    Close All Browsers



*** Keywords ***
