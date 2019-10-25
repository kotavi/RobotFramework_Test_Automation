*** Settings ***
Documentation  Simple example
Library  SeleniumLibrary


#*** Variables ***

*** Test Cases ***
User must sign in to checkout
    [Documentation]  Simple example
    [Tags]  smoke
    Open Browser  https://www.amazon.com  chrome
    Wait Until Page Contains  Hello, Sign in
    Input Text  id=twotabsearchtextbox  wall nails
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "wall nails"
    Click Element	xpath: //*[contains(text(), "Qualihome Hardware Nail Assortment Kit")]
    Wait Until Page Contains  Add to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart
    Click Element  xpath: //*[contains(text(), "Proceed to checkout")]
    Page Should Contain Element  createAccountSubmit
    Go Back
    Click Link  xpath: //*[@id="nav-logo"]/a[1]
    Click Link  /ref=nav_logo
    Click Element  css: a[aria-label="Women's"]
    Click Image  Disguise Women's Rose Gold Minnie Deluxe Adult Costume
    Page Should Contain Element  add-to-cart-button
    Close Browser

#*** Keywords ***

[Teardown]  Close Browser
