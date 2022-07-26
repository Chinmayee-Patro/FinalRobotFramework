*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${appurl}   https://www.mysql.com/
${appurl1}  https://www.docker.com/
${browser}  chrome




*** Test Cases ***
TechED_TC_0001
    # Launch the techED application
    open browser   ${appurl1}    ${browser}
    maximize browser window

    # Scroll to footer Oracle logo

    scroll element into view  (//a[text()='Legal'])[1]
    sleep  1

    # Mouse over one element
    mouse over      (//a[text()='Products'])[1]
    sleep   1
    mouse over      (//a[text()='Developers'])[1]
    sleep   1
    mouse over      (//a[text()='About Us'])[1]
    sleep   1

    #validate the error message

    input text      //input[@id='Email']        1234
    click button    //button[text()='Subscribe']
    sleep   3
    page should contain element     //div[@id='ValidMsgEmail']
    sleep   1


    #validateHTML

    close all browsers




*** Keywords ***
