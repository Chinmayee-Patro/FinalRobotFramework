*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${appurl}   https://the-internet.herokuapp.com/javascript_alerts
${browser}  chrome



*** Keywords ***

Setup

     # Launch the application
    open browser   ${appurl}    ${browser}
    maximize browser window

Teardown

    Close All Browsers


