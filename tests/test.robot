*** Settings ***
Documentation    API Testing in Robot Framework
Library    RequestsLibrary
Library    String
Library    Collections


*** Variables ***
${base_url}     https://pt-api-jrep.onrender.com

*** Test Cases ***
Get healthcheck return 200
    Create Session    sess    ${base_url}
    ${resp}=    GET On Session    sess    /healthcheck
    Should Be Equal As Strings    ${resp.status_code}    200
