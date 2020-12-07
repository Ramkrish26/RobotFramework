*** Settings ***
Documentation  This file is to setup before and after suite on folder level
Library  SeleniumLibrary
Suite Setup  Code to run before suite
Suite Teardown  Code to run after suite

*** Keywords ***
Code to run before suite
    log  This is to run before suite

Code to run after suite
    log  This is to run after suite