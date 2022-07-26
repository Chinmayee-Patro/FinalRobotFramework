*** Settings ***
Library  SeleniumLibrary


*** Variables ***

${appurl}   https://www.google.com
${browser}  headlesschome
${exceptedTitle}    Google

*** Test Cases ***
TC_0001
    open browser    ${appurl}  ${browser}

    # Maximize browser
    maximize browser window


    # Validate the Google Logo
    page should contain element  //img[@class ='lnXdpd']

    validateGooglePageTitle
    validateGmailLink
    validateGoogleSearchBox


    # Validate the gmail
    page should contain element     btnK
    close browser



*** Keywords ***
validateGooglePageTitle
    # Print the title of the page
    ${currentpagetitle}     get title
    log to console  ${currentpagetitle}
    should be true  """${exceptedTitle}""" == """${currentpagetitle}"""

validateGmailLink
    # Validate Gmail link
    page should contain element  //a[text() ='Gmail']

validateGoogleSearchBox
    # Validate the google Search text box
    page should contain element  //input[@name='q']
