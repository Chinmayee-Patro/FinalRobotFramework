*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${appurl}   https://www.arisglobal.com
${browser}  chrome



*** Keywords ***

Setup

     # Launch the application
    open browser   ${appurl}    ${browser}
    maximize browser window

Teardown

    Close All Browsers


