*** Settings ***
Library           RPA.Browser.Selenium
Library           String
Library           Screenshot
Resource          Variables.robot


*** Keywords ***
Open SF Browser
    Open Browser    ${Salesforce_url}    ${Browser}
    Maximize Browser Window

Login Into Salesforce
    Wait until element is visible    ${UserName_loc}    10s
    Input Text    ${UserName_loc}    ${Username}
    Input Text    ${Password_loc}    ${Password}
    Click element    ${Login_loc}
    sleep    20s

Lead Creation
    Wait until element is visible    ${Lead_title_loc}    10s
    Force click element    ${Lead_title_loc}
    Click Element    //div[@title="New"]
    #Wait Until page contains element    //span[text()='CSADetails']
    Click Element    //span[text()='CSADetails']
    Click Element    //span[text()='Next']
    Input Text    //input[@name="Company"]    Ziggo
    Click Element    //input[@name="salutation"]
    Click Element    //span[@title="Mr."]
    Input Text    //input[@name="lastName"]    Guru
    Click Element    //label[text()='Lead Status']//following::input[1]
    Click Element    //label[text()='Lead Status']//following::span[@title='Accept']
    Input Text    ${Visit_street_loc}    Reinoutsgaarde
    Input Text    ${Visit_house_no}    2
    Input Text    ${Postcode_no}    3436
    Input Text    ${Postcode_char}    RA
    Input Text    ${Visit_city}    Nieuwegein
    Input Text    ${Visit_country}    Netherlands
    Click Element    //button[@name='SaveEdit']

Force click element
    [Arguments]    ${elementToClick}
    [Documentation]    Javascript Code to overcome the element interception issue
    ${element_xpath}=    Replace String    ${elementToClick}    \"    \\\"
    Execute JavaScript    document.evaluate("${element_xpath}", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
    sleep    1s
