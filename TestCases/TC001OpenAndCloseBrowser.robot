*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/ResourceFiles.robot

Test Setup  Init Browser
Test Teardown  stop browser

# Default tag which will be assigned to test cases that doesnt have any tags associated
default tags  anyname

# Force tags will be applied to all test cases irrrespective of cases that has or has not poccess a tag
force tags  anyname1

*** Test Cases ***
Start And Close Browser
    [Tags]  smoke  sanity
    # Setup and teardown on test case level
    # [Setup]  Init Browser
    # [Teardown]  stop browser

    # To set wait for each line
    # set selenium speed  2seconds

    # To clear the text inside the element
    clear element text  name:q

    # To call the user defined keywords
    Enter text in google search box  selenium1

    Using python functions from external keywords  E:\\ramFolder

    # To select a radio click button
    # select radio button  <locator>  <value which shiuld be selected>

    # To select a check box
    # select checkbox  <locator>

    # To click an link
    # click link  <locator>

    # To select from a dropdown
    # select from list by index  <locator>  <index>

    # To pass some text inside an element
    # input text  name:q  selenium

    # To get the title of the page
    # ${pageTitle}=   get title

    # To get the value of an element
    # ${elementValue}=  get value  <locator>

    # To get the inner text of an element
    # ${elementText}=  get text  <locator>

    # To get the current url
    # ${url}=  get location

    # To get the html of the page
    # ${pageSource}=  get source

    # To get the value of an attribute
    # get element attribute  <locator>  <attribute name>
