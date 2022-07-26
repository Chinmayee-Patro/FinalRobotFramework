*** Settings ***
Library  SeleniumLibrary
Library     ../reusable/reusable.py
Suite Setup     readXML

*** Variables ***
${browser}  chrome


*** Test Cases ***
TestCase_001

    #Read XML file

    Log To Console    ${chromepath}

    Open Browser    ${applicationpath}  ${browser}
    Maximize Browser Window
    Close All Browsers


*** Keywords ***
readXML

    ${applicationpath}  reusable.readXMLAsPerNode   applicationURL
    Set Global Variable    ${applicationpath}
    ${chromepath}   reusable.readXMLAsPerNode   chromepath
    Set Global Variable    ${chromepath}

