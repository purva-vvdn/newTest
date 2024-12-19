*** Settings ***
Library         OperatingSystem

*** Variables ***
${PATH}         ${CURDIR}/example.txt

*** Test Cases ***
Example
    Create File          ${PATH}    Some text
    File Should Exist    ${PATH}
    Copy File            ${PATH}    ~/file.txt