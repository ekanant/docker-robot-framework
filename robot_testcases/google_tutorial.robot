*** Settings ***
Library   Selenium2Library

*** Keywords ****
Set Environment Variable  webdriver.gecko.driver  geckodriver
Maximize Browser Window

*** Variables ***
${BROWSER}    firefox

*** Testcases ***
Open Google
    Open Browser    http://www.google.com   browser=${BROWSER}

Search Hello world
    Input Text  q   Hello world
    Click Element  name=btnG
    Wait Until Page Contains    ผลการค้นหาประมาณ
    Capture Page Screenshot   filename=hello_world_google.png
