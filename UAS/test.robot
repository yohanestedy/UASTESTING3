*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://www.demoblaze.com/index.html
${BROWSER}        Chrome

*** Test Cases ***
testcase-login-1
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath://a[@id='login2']
    Wait Until Page Contains Element    xpath://input[@id='loginusername']    timeout=10s
    Sleep            1s   # Add a sleep to wait for the login process to complete
    Input Text       id:loginusername    test-654321
    Input Text       id:loginpassword    123456
    Click Element    xpath://button[@onclick='logIn()']
    Sleep            5s   # Add a sleep to wait for the login process to complete
    Wait Until Element Is Visible    xpath://a[@id='nameofuser']    timeout=10s
    Close Browser
