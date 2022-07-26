*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${appurl}   https://the-internet.herokuapp.com/javascript_alerts
${browser}  chrome



*** Keywords ***

LaunchMyWebsite

     # Launch the application
    open browser   ${appurl}    ${browser}
    maximize browser window

CloseMyWebsite

    Close All Browsers


