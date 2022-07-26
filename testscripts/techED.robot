*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${appurl}   https://techedtrainings.com/
${browser}  chrome
${Prefix}   The Current URL is:


*** Test Cases ***
TechED_TC_0001
    open browser   ${appurl}    ${browser}
    maximize browser window

    #Click on Contact Element
    click element  (//a[text()='Contact'])[1]
    wait until page contains  Contact


    #Type First name
    input text  text-name   Chinmayee
    sleep  5


    # Print Current page URL
    ${currentURL}   get location
    #${textToPrint}  catenate    ${Prefix}   ${currentURL}
    log to console  The Current URL is: ${currentURL}

    # Selecting Drop Down Subject
    select from list by value   menu-363    Testing
    sleep   3

    select from list by value   menu-363    Database
    sleep   3

    # Count all Page get all links
    ${linkCount}    get element count  //a
    log to console   Total no of links: ${linkCount}
    close all browsers


*** Keywords ***
