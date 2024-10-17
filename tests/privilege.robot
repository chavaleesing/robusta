*** Settings ***
Documentation    privilege-list-inquiry testing
Library    RequestsLibrary
Library    String
Library    Collections


*** Variables ***
${base_url}     https://sit-new-welfare.ktbgw.nonprod.gcp.ktbcloud/newwelfare-platform/api/privilege-list-inquiry

# Define Headers as a Dictionary Variable
&{headers}=    x-devops-key=r9EDnBeR8bsuGma8zRINE9PWDUjxIZrz    x-devops-dest=new-welfare    x-devops-src=kcorp

*** Test Cases ***
Get priv list return 200
    Create Session    sess    ${base_url}
    ${param}=    Create Dictionary    campaignId=WFCID
    ${resp}=    GET On Session    sess    /v1/privileges    headers=${headers}    params=${param}
    Should Be Equal As Strings    ${resp.status_code}    200
