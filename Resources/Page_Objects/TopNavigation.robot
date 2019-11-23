*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Keywords ***
Click on Logo
    Click Link  xpath: //*[@id="nav-logo"]/a[1]
#    Click Link  /ref=nav_logo

Search for product
    Enter search term
    Submit search

Enter search term
    Input Text  id=twotabsearchtextbox  wall nails

Submit search
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
