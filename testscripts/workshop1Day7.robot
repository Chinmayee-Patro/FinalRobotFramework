*** Settings ***
Library  SeleniumLibrary
Library     ../reusable/reusable.py
Variables   ../reusable/pom.py
Test Setup  readXML


*** Variables ***

${exceptedTitle}    Homepage | ArisGlobal

*** Test Cases ***
TC_0001
    open browser    ${applicationpath}  ${browser}
    Sleep    10
    #Wait Until Element Contains    //a[@class='button site-header-large__cta']    Careers

    # Maximize browser
    maximize browser window

    # Validate the tilte
    #validatePageTitle

    # Validate the Logo
    validateLogo


    #Validate the header
    validateheader

    # Validate the Primary meny bar options
    # First Mouse Over
    Mouse Over    ${lifesphereoption}
    Sleep    2
    Log To Console    ${lifesphereoption}
    Mouse Over    ${lifespheresafety}
    Sleep    2
    Click Element   ${evtriage}

    # Second Mouse Over
    Mouse Over    ${whoweare}
    Sleep    2
    Log To Console    ${whoweare}
    Mouse Over    ${leadership}
    Sleep    2
    Click Element   ${sustainability}


    
    Sleep    5


    Close All Browsers


*** Keywords ***
readXML

    ${applicationpath}  reusable.readXMLAsPerNode   applicationURL
    Set Global Variable    ${applicationpath}
    ${browser}      reusable.readXMLAsPerNode   browser
    Set Global Variable    ${browser}


#validatePageTitle
    # Print the title of the page
    #${currentpagetitle}     get title
    #log to console  ${currentpagetitle}
    #wait
    #//button[@class='drift-widget-naked-button drift-widget-message-close-button drift-widget-close-button--align-right']

validateLogo

    # Validate the Logo for thr page
    Page Should Contain Image    //img[@alt='ArisGlobal']


validateheader

    # Validate the header Delivering safer, faster breakthroughs
    ${header}   Get Text    //h2[contains(.,'Delivering safer, faster breakthroughs')]
    Log To Console    ${header}
    #Page Should Contain Element    //h2[@class='headline-2 homepage-banner__title js-animate-in__item delay-100']








