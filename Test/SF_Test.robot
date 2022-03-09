*** Settings ***
Resource          ../Resources/Keywords.robot
Resource          ../Resources/Variables.robot
Library           RPA.Browser.Selenium
Library           RPA.Excel.Files
Library           RPA.Tables
Resource          ../Keywords/ExcelKeywords.resource
Library           RPA.Desktop
Resource          ../Keywords/SFKeywords.txt

*** Variable ***
${Excel_File}     /Users/zoostation/Documents/Business_Mobile_SIT_test_cases_V1.1.xlsx

*** Test Cases ***
TC01_Login
    [Documentation]    sf_login
    #Comment    Set Selenium Implicit Wait    10 seconds
    #Comment    Open SF Browser
    #Comment    Login Into Salesforce
    #Comment    Lead Creation
    Login
    #@{sheets}= List Worksheets
    #FOR ${sheet} IN @{sheets}
    # ${count}= Get row count in the sheet ${sheet}
    # Log Worksheet '${sheet}' has ${count} rows
    #END
    #Opportunity Creation
    Comment    Go To    https://vodafoneziggo--testcons.lightning.force.com/lightning/o/Opportunity/list?
    Comment    Wait Until Element Is Visible    //div[@title = 'New']    100s
    Comment    Click Element When Visible    //div[@title = 'New']
    Comment    Sleep    20s
    Comment    Select From List By Index    //select[@name='mySelect']    0
    Comment    Wait Until Element Is Visible    //label[text()='Account']//following::input    5s
    Comment    Click Element When Visible    //label[text()='Account']//following::input
    Comment    Input Text    //label[text()='Account']//following::input    Test_Sites_PC_01
    Comment    Wait Until Element Is Visible    //div[@id="listbox-results"]/ul/li[1]    20s
    Comment    Click Element    //div[@id="listbox-results"]/ul/li[1]
    Comment    Click Element    //label[text()='Account']
    Comment    Click Button When Visible    //button[text()='Next']
    Comment    Sleep    25s
    Comment    Wait Until Element Is Visible    //input[@name='closeDate']    60s
    Comment    Input text    //input[@name='closeDate']    19-Feb-2022
    Comment    Clear Element Text    //input[@name='OppName']
    Comment    Input Text    //input[@name='OppName']    Test_Auto_opp4
    Comment    Click Element    //label[text()='Account']
    Comment    Sleep    10s
    Comment    Click Button When Visible    //button[text() ='Next']
    #Opportunity creation done
    Go To    https://vodafoneziggo--testcons.lightning.force.com/lightning/r/Opportunity/0061w00001JMF2TAAX/view
    Wait Until Element Is Visible    //a[@data-tab-name='Prospect']    120s
    Wait Until Element Is Visible    //a[contains(text(), 'Show All')]    100s
    Scroll Element Into View    //a[contains(text(), 'Show All')]
    Click Element    //a[contains(text(), 'Show All')]
    Wait Until Element Is Visible    (//h2[contains(text(), 'Related List Quick Links')]/following::span[contains(text(),'Product Baskets')])[1]    20s
    Click Element    (//h2[contains(text(), 'Related List Quick Links')]/following::span[contains(text(),'Product Baskets')])[1]
    Wait Until Element Is Visible    //h1[@title='Product Baskets']    30s
    Wait Until Element Is Enabled    //div[@title='New']    50s
    ${ele}    Get WebElement    //div[@title='New']
    Execute Javascript    arguments[0].click();    ARGUMENTS    ${ele}
    Comment    Wait Until Element Is Enabled    //span[text()='Product basket']    100s
    Sleep    30s
    Select Frame    //iframe[@title="accessibility title"]
    Wait Until Element Is Visible    //span[text()='Add Solution']    40s
    Scroll Element Into View    //span[text()='Add Solution']
    Click Element    //span[text()='Add Solution']
    Sleep    20s
    Unselect Frame
    Select Frame    //iframe[@title="accessibility title"]
    Comment    Wait Until Element Is Visible    //button[text()='Add New Solution']    60s
    Click Element    //button[text()='Add New Solution']
    Sleep    10s
    Click Element    //span[text()='Business Internet Modem Only']
    Sleep    10s
    Click Element    //button[text()='Add ']
    Unselect Frame
    Sleep    20s
    Select Frame    //iframe[@title="accessibility title"]
    Click Element    //button[text()='Next ']
    Unselect Frame
    Sleep    20s
    Select Frame    //iframe[@title="accessibility title"]
    Click Element    (//span[text ()='Add Access'])[2]
    Wait Until Element Is Visible    (//h3[@class='config-name'])[2]    30s
    Click Element    (//h3[@class='config-name'])[2]
    Sleep    10s
    Comment    Select Frame    //iframe[@title="accessibility title"]
    Comment    Wait Until Element Is Visible    (//input[@role='combobox'])[2]    30s
    Comment    ${ele}    Get WebElement    (//input[@role='combobox'])[2]
    Comment    Execute Javascript    arguments[0].click();    ARGUMENTS    ${ele}
    Comment    Click Element    (//input[@role='combobox'])[2]
    Comment    Unselect Frame
    Click    image:Contract_term_Snipit.png
    ${Contract_Term}    Set Variable    12
    Click Element    //div[@title='+${Contract_Term}+']
    Wait Until Element Is Visible    (//input[@aria-autocomplete='list'])[3]    30s
    Click Element    (//input[@aria-autocomplete='list'])[3]
    ${Site}    Set Variable    Hoofddorp, Tuinweg, 63 \ - 2132DN
    Wait Until Element Is Visible    //div[@title='+${Site}+']    30s
    Click Element    //div[@title='+${Site}+']
    Wait Until Element Is Visible    (//input[@aria-autocomplete='list'])[4]    30s
    Click Element    (//input[@aria-autocomplete='list'])[4]
    ${Product}    Set Variable    Coax aansluiting 100/30 Mbps
    Wait Until Element Is Visible    //div[@title='+${Product}+']    30s
    Click Element    //div[@title='+${Product}+']
