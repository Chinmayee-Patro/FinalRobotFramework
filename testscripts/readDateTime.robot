*** Settings ***
Library  SeleniumLibrary
Library     DateTime


*** Variables ***





*** Test Cases ***
Learn_Date_Movement

    # Read Date And Time
    ${todays_date}  Get Current Date
    Log To Console    ${todays_date}

    ${only_date}    Convert Date    ${todays_date}  result_format=%a %B %d
    Log To Console    ${only_date}

    # To make Date ++
    ${date_+_28}    Add Time To Date    ${todays_date}     28 Days
    Log To Console    28 days from today's date: ${date_+_28}

    # To make Date --
    ${date_minus_28}    Add Time To Date    ${todays_date}     -28 Days
    Log To Console    28 days minus from today's date: ${date_minus_28}





*** Keywords ***
