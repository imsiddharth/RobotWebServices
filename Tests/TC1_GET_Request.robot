*** Settings ***

Library  RequestsLibrary
Library  Collections

*** Variables ***
${base_url}  http://restapi.demoqa.com
${city}  Dubai

*** Test Cases ***
Get Weather Info
    create session  myssion  ${base_url}
    ${response}=  get request  myssion    /utilities/weather/city/${city}

    # Validation
    ${status_code}=  convert to string  ${response.status_code}
    should be equal  ${status_code}   200

    ${body}=  convert to string  ${response.content}
    should contain  ${body}  Dubai

    ${content_type_value}=  get from dictionary  ${response.headers}  content-type
    should be equal  ${content_type_value}  application/json
