*** Settings ***
Resource        ../Resource/Library/_init.resource
Resource        ../Resource/variables/_init.resource

*** Keywords ***

Open RDJ website
    [Arguments]    ${url}
    # ${url}    Replace String    ${url}    lang    ${lang}
    Open Browser    ${url}    Google Chrome
    # Close cookie


# Close cookie
#     Wait Until Element Is Visible    ${btn_accept_cookie}
#     Click Element    ${btn_accept_cookie}
#     Wait Until Element Is Not Visible    ${btn_accept_cookie}   30s

# Change language
#     [Arguments]    ${lang}
#     Wait Until Element Is Enabled    ${lbl_langugae}
#     ${current_lang}    Get Text    ${lbl_langugae}
#     ${dropdown_lang}    Replace String    ${lbl_language_dropdown}    lang    ${lang}
#     Run Keyword If    '${lang}'!='${current_lang}'    Click Element    ${btn_language}
#     Run Keyword If    '${lang}'!='${current_lang}'    Click Element    ${dropdown_lang}

[w] Click Element
    [Arguments]    ${description}  ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

