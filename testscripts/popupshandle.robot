*** Settings ***
#Suite Setup    Setup before all tests
Library  SeleniumLibrary
Resource    ../reusable/common.robot
Variables   ../reusable/pom.py
Test Setup  Setup
Test Teardown   Teardown



*** Variables ***
${appurl}   https://the-internet.herokuapp.com/javascript_alerts
${browser}  chrome
${clickforJSAlert}  //button[text()='Click for JS Alert']
${clickforJSConfirm}    //button[text()='Click for JS Confirm']
${clickforJSPrompt}     //button[text()='Click for JS Prompt']


*** Test Cases ***
Click_on_JS_Alert

    # Validate the popup text and click on OK button

    Click Button    ${javaScriptAlertbtn}
    Sleep    1
    ${pop_up_text}  Handle Alert
    Log To Console    ${pop_up_text}

    # Validate the confirmation

    Element Text Should Be    result    You successfully clicked an alert
    Sleep    1

Click_on_JS_Confirm

    # Validate the popup text and click on OK button

    Click Button    ${clickforJSConfirm}
    Sleep    1
    ${pop_up_text}  Handle Alert    action=ACCEPT
    Log To Console    ${pop_up_text}

    # Validate the confirmation

    Element Text Should Be    result    You clicked: Ok
    Sleep    1

    # Validate the popup text and click on Cancel button
    Click Button    ${clickforJSConfirm}
    Sleep    1
    ${pop_up_text}  Handle Alert        action=DISMISS
    Log To Console    ${pop_up_text}

    Element Text Should Be    result    You clicked: Cancel
    Sleep    1


Click_on_JS_Prompt

    # Validate the popup text and click on OK button

    Click Button    ${clickforJSPrompt}
    Sleep    1

    ${pop_up_text}  Handle Alert    action=DISMISS
    Log To Console    ${pop_up_text}

    # Validate the popup text and click on Cancel button

    Element Text Should Be    result    You entered: null
    Sleep    1

    Click Button    ${clickforJSPrompt}
    Sleep    1
    
    Input Text Into Alert    My name is Chinmayee   action=ACCEPT
    Sleep    1

    # Validate the confirmation

    Element Text Should Be    result    You entered: My name is Chinmayee
    Sleep    1


*** Keywords ***

#Setup before all tests
#    evaluate    sys.path.append("C:/Users/00005582/PycharmProjects/RobotFramework")



