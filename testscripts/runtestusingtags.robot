*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${appurl}   https://the-internet.herokuapp.com/javascript_alerts
${browser}  chrome



*** Test Cases ***
TestCase_001

    [Tags]  Smoke
    Log To Console    Test Case1

TestCase_002

    [Tags]  Regression
    Log To Console    Test Case2


TestCase_003

    [Tags]  Sanity
    Log To Console    Test Case3

TestCase_004

    [Tags]  Dev
    Log To Console    Test Case4

TestCase_005

    [Tags]  Smoke
    Log To Console    Test Case5

TestCase_006

    [Tags]  Regression
    Log To Console    Test Case6


TestCase_007

    [Tags]  Sanity
    Log To Console    Test Case7

TestCase_008

    [Tags]  Dev
    Log To Console    Test Case8

TestCase_009

    [Tags]  Smoke
    Log To Console    Test Case9

TestCase_0010

    [Tags]  Regression
    Log To Console    Test Case10


TestCase_0011

    [Tags]  Sanity
    Log To Console    Test Case11



*** Keywords ***

Setup

     # Launch the application
    open browser   ${appurl}    ${browser}
    maximize browser window

Teardown

    Close All Browsers


