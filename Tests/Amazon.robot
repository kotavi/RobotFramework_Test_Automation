*** Settings ***
Documentation  Simple example

Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot

*** Test Cases ***
User must sign in to checkout
    [Documentation]  Simple example
    [Tags]  search
    Begin Web Test
    Search for products
    Select Product from Search result
    Add Product to Cart
    Begin Checkout
    End Web Test

User can click on logo image
    [Documentation]  Simple example
    [Tags]  smoke
    Begin Web Test
    Follow the Amazon Logo
    End Web Test