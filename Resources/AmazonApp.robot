*** Settings ***
Documentation    All the keywords associated with testing the Amazon website

Resource  Page_Objects/LandingPage.robot
Resource  Page_Objects/TopNavigation.robot
Library  SeleniumLibrary

*** Keywords ***
Search for products
    LandingPage.Load
    LandingPage.Verify page loaded
    TopNavigation.Search for product
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
    LandingPage.Load
    LandingPage.Verify page loaded
    TopNavigation.Click on Logo
    LandingPage.Verify page loaded