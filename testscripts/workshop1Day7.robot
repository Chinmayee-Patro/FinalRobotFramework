*** Settings ***
Library  SeleniumLibrary


*** Variables ***

${appurl}   https://www.arisglobal.com/
${browser}  chrome


*** Test Cases ***
TC_0001
    open browser    ${appurl}  ${browser}

    # Maximize browser
    maximize browser window

    # I am doing some Changes





*** Keywords ***

