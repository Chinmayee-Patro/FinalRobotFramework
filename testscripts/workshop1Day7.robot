*** Settings ***
Library  SeleniumLibrary
Library     ../reusable/reusable.py
Variables   ../reusable/pom.py
Resource  ../reusable/common.robot
Suite Setup  readXML
#Test Setup  Setup
#Test Teardown   Teardown



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

    ${homepageurl}  Get Location
    Mouse Over    ${lifesphereoption}
    Sleep    2
    Log To Console    ${lifesphereoption}
    Mouse Over    ${LifeSpheremedicalaffairs}
    Sleep    2
    Click Element   ${reporter}
    
    Sleep   10
    
    Page Should Contain Element    ${watchavideo}

    Page Should Contain Element    ${scheduledemo}
    Click Element    ${scheduledemo}

    #Fill the form
    Select Frame    //iframe[@class='pardot-form']
    Sleep   3
    Element Should Be Visible    ${inputfirstname}
    Element Should Be Enabled    ${inputfirstname}
    Input Text    ${inputfirstname}   Chinmayee
    Input Text    ${inputlasttname}    Patro
    Input Text    ${inputcompanytname}   ABC
    Input Text    //label[contains(.,'Job Title')]/../input    Software Test Engineer
    Click Element    ${dropdown1}
    Click Element    ${selectthecountry}
    Input Text    //label[contains(.,'State')]/../input    Odisha
    Input Text    //label[contains(.,'Email')]/../input   abc.def@hmail.com
    Click Element    //label[contains(.,'Area of Interest')]/following-sibling::select
    Click Element    //label[contains(.,'Area of Interest')]/following-sibling::select/option[6]
    Input Text    //label[contains(.,'Comments')]/../input    To view the demo
    Sleep    5

    #Validate Request Demo button but don’t click on it.
    Page Should Contain Element    //input[@type='submit']

    Go To    ${homepageurl}

#    # Second Mouse Over
#    Mouse Over    ${whoweare}
#    Sleep    2
#    Log To Console    ${whoweare}
#   # Mouse Over  ${leadership}
#    #Sleep    2
#    #Click Element   ${sustainability}


    Sleep    5
    Close All Browsers

TC_0002

    [Tags]  Test2
    # Open the browser

    open browser    ${applicationpath1}  ${browser}
    Sleep    10

    # Maximize browser
    maximize browser window

    #Validate Executive Team is selected by default
    
    Page Should Contain Element    ${executiveteamselected}
    Sleep    1

    #Click on Board of Directors

    Click Element    ${boardofdirectors}
    Sleep    2



*** Keywords ***
readXML

    ${applicationpath}  reusable.readXMLAsPerNode   applicationURL
    Set Global Variable    ${applicationpath}
    ${applicationpath1}  reusable.readXMLAsPerNode   applicationURL1
    Set Global Variable    ${applicationpath1}
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








