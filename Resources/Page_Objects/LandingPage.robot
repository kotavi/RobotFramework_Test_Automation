*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

*** Keywords ***
Load
    Go to  https://www.amazon.com

Verify page loaded
    Wait Until Page Contains  Hello, Sign in