*** Settings ***
Library   Selenium2Library
#Library  OperatingSystem
#Test Timeout  10 seconds
#Test Timeout   2 minutes

*** Keywords ****
Set Environment Variable  webdriver.gecko.driver  geckodriver

*** Variables ***
${BROWSER}    chrome

*** Testcases ***
Open Google
# Override default timeout
#    [Timeout]   1 seconds
    Open Browser    http://www.google.com   browser=${BROWSER}
    Input Text  q   Hello world
    Click Element  name=btnG
    Capture Page Screenshot   filename=hello_world_google.png
#    Capture Page Screenshot   filename=./ss/hello_world_google.png
#    Close Browser
