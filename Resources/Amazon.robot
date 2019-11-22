*** Settings ***
Documentation    All the keywords associated with testing the Amazon website

Library  SeleniumLibrary

*** Keywords ***
Search for products
    Go to  https://www.amazon.com
    Wait Until Page Contains  Hello, Sign in
    Input Text  id=twotabsearchtextbox  wall nails
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "wall nails"

Select Product from Search result
    Click Element	xpath: //*[contains(text(), "Qualihome Hardware Nail Assortment Kit")]
    Wait Until Page Contains  Add to Cart

Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart

Begin Checkout
    Click Element  xpath: //*[contains(text(), "Proceed to checkout")]
    Page Should Contain Element  createAccountSubmit

Follow the Amazon Logo
    Go to  https://www.amazon.com
    Wait Until Page Contains  Hello, Sign in
    Click Link  xpath: //*[@id="nav-logo"]/a[1]
    Click Link  /ref=nav_logo