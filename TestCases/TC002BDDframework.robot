*** Settings ***
Resource  ../Resources/ResourceFiles.robot

*** Test Cases ***
Test cases with BDD format
    Given Init Browser
    When Enter text in google search box
    Then stop browser
