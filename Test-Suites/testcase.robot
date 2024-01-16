*** Settings ***
Resource        ../Resource/imports.robot


*** Variables ***
${ENV}  sit

*** Keywords ***

Open RDJ website
    [Arguments]    ${url}
    # ${url}    Replace String    ${url}    lang    ${lang}
    Open Browser    ${url}    Google Chrome
    # Close cookie

*** Test Cases ***
TC001_test
    Open RDJ website   https://tconfirm-next-admin-web-develop3.tconfirmtest.com/login
    Sleep    2s
    Click Element    //*[text()="Login"] 
    Sleep    4s
    Input Text    id=i0116    ipm18@uattmb.tmbbank.com
    Click Button  id=idSIButton9
    Sleep    5s
    Input Password    id=passwordInput    Tmb@12345
    Sleep    3s
    Click Element    id=submitButton
    Click Button    id=idSIButton9
    Wait Until Element Is Visible    //div[@class='headerLayout__TitleContent-sc-17y1cnh-2 CDQgD mt-2'][contains(.,'Content editor')]  45s
    Sleep    20s

CASE_00004 lesson 4 get data from yaml file
    Log To Console   'request ::='${test_data.CASE_00004.request}
    Log To Console   'expect_data ::=='${test_data.CASE_00004.expect_data}

CASE_00005 lesson 5 get env global file
    Log To Console   'app_name ::=='${app_name}

CASE_00007 lesson 7 use variable with resource environnment
    Log To Console   'welcome_message from ${ENV}::=='${welcome_message}