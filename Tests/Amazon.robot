*** Settings ***
Documentation  Simple example

Resource  ../Resources/Common.robot
Resource  ../Resources/AmazonApp.robot

Suite Setup  Begin Web Test
Suite Teardown  End Web Test

*** Test Cases ***
User must sign in to checkout
    [Tags]  search
    AmazonApp.Search for products
    AmazonApp.Select Product from Search result
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout

User can click on logo image
    [Tags]  smoke
    AmazonApp.Follow the Amazon Logo
