*** Variables ***
#Data
#${Salesforce_url}    https://test.salesforce.com
#${Username}      gurur.marimuthu@vodafoneziggo.com.testcon
#${Password}      Jan@2022$
#${Browser}       Chrome
#Locators
#${Username_loc}    //input[@id="username"]
#${Password_loc}    //input[@name="pw"]
#${Login_loc}     //input[@id="Login"]
#${Lead_title_loc}    //a[@title="Leads"]
#${Visit_street_loc}    //label[text()='Visiting Street']//following::div[1]/input
#${Visit_house_no}    //label[text()='Visiting Housenumber']//following::div[1]/input
#${Postcode_no}    //label[text()='Visiting Postcode number']//following::div[1]/input
#${Postcode_char}    //label[text()='Visiting Postcode char']//following::div[1]/input
#${Visit_city}    //label[text()='Visiting City']//following::div[1]/input
#${Visit_country}    //label[text()='Visiting Country']//following::div[1]/input
#//label[text()='Lead Status']//following::input[1] - Useful tip
#[Arguments]
#[Return]         ${rows}
