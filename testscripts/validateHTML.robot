*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${appurl}   https://testautomationpractice.blogspot.com/
#${appurl1}  https://www.docker.com/
${browser}  chrome
${gettheheaderofatable}    //table[@name='BookTable']/tbody/tr




*** Test Cases ***
TechED_TC_0001
    # Launch the techED application
    open browser   ${appurl}    ${browser}
    maximize browser window

    #validateHTML

    # How to get HTML row get element count
    ${trow}     get element count  //table[@name='BookTable']/tbody/tr
    log to console      Table row count are: ${trow}

    #How to het the HTML table column get element count
    ${columncount}      get element count  //table[@name='BookTable']/tbody/tr[1]/th
    log to console      Table column count are: ${columncount}

    # Print the Column HeaderNme

    ${HeaderName1}   get text        //table[@name='BookTable']/tbody/tr[1]/th[1]
    ${HeaderName2}   get text        //table[@name='BookTable']/tbody/tr[1]/th[2]
    ${HeaderName3}   get text        //table[@name='BookTable']/tbody/tr[1]/th[3]
    ${HeaderName4}   get text        //table[@name='BookTable']/tbody/tr[1]/th[4]
    #log to console      ${HeaderName1}      ${HeaderName2}      ${HeaderName3}      ${HeaderName4}

    ${columncount}      get webelements     //table[@name='BookTable']/tbody/tr[1]/th
    FOR    ${apple}    IN    @{columncount}
        ${headerName}   Get Text    ${apple}
        Log To Console  ${headerName}
         
    END
    
    # Count Total Number Of Links ....
    ${columncount}      Get WebElements     //a
    FOR    ${apple}    IN    @{columncount}
        ${headerName}   Get Text    ${apple}
        Log To Console  ${headerName}

    END

    # How to print First Column Deatils

    ${firstcolcount}    Get WebElements    //table[@name='BookTable']/tbody/tr/td[1]
     FOR    ${apple}    IN    @{firstcolcount}
        ${headerName}   Get Text    ${apple}
        Log To Console  ${headerName}

    END

    # How to check 3000 value in HTML?
    Table Column Should Contain    BookTable    4    3000

    # How to check some data in 5th Row

    Table Row Should Contain    BookTable    5    Master In Selenium
    
    # How to validate table header name
    Table Header Should Contain    BookTable    Price
    #Table Header Should Contain    BookTable    Chinmayee Negative test case

    # How to validate particular cell in table
    Table Cell Should Contain    BookTable    7    3    Javascript

    close all browsers

*** Keywords ***
