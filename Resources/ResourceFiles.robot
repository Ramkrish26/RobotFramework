*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/pythonFunctions.py
Documentation  This is example of adding documentation for file level
Library  ../ExternalKeywords/locators.py

*** Variables ***
${Browser}  Chrome
${url}  http://www.google.com

*** Keywords ***
Enter text in google search box
    [Documentation]  This keyword will enter the text in google search box
    [Arguments]  ${value}

    # Timeout is to specify the time within which the keyword must be completed. If exceeded will throw error
    [Timeout]  40s
    ${locator}=  read_locator_from_json  searchBox
    input text  name:${locator}  ${value}

    # To return a value
    # [Return]  ${value}

Init Browser
    # To open a browser. Should place the exe file in Pyhton/Scripts
    open browser  ${url}  ${Browser}

     # To maximize the browser window
    maximize browser window

stop browser
    # To close the browser
    close browser

Using python functions from external keywords
    [Arguments]  ${file_path}
    create_folder  ${file_path}

Locator from json
    [Arguments]  ${value}
    read_locator_from_json  ${value}
