*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${appurl}   https://techedtrainings.com/
${browser}  chrome
${Prefix}   The Current URL is:
${phoneNumber}  (//div[@class='stm-iconbox__description'])[2]
${ITCorporateTrainings}     //span[text()='IT Corporate Trainings']



*** Test Cases ***
TechED_TC_0001
    # Launch the techED application
    open browser   ${appurl}    ${browser}
    maximize browser window

    #Validate +91 inside phone number in the home screen
    ${phone}    get text  ${phoneNumber}
    log to console  ${phone}
    should start with  ${phone}     +91

    #Validtae the text IT Corporate Trainings
    ${validateITCorporateTrainingspage}     get text         ${ITCorporateTrainings}
    log to console      ${validateITCorporateTrainingspage}


    close all browsers


*** Keywords ***
