*** Settings ***

Library  RequestsLibrary
Library  Collections

*** Variables ***
${base_url}  http://restapi.demoqa.com
${city}  Dubai
${username}  test098ewewe76qwweewewewwww54535353wewew
${email}  eweewewewweewewe34343@gmail.com

*** Test Cases ***
Customer Registration
    create session  my_session  ${base_url}

    ${body}=  create dictionary   FirstName=test  LastName=test1234  UserName=${username}  Password=test1234  Email=${email}
    ${header}=  create dictionary  Content-Type=application/json
    ${response}=  post request  my_session  /customer/register  data=${body}  headers=${header}

    log to console  ${response.status_code}
    log to console  ${response.content}

    # Validation
    ${status_code}=  convert to string  ${response.status_code}
    should be equal  ${status_code}   201

    ${body}=  convert to string  ${response.content}
    should contain  ${body}  OPERATION_SUCCESS
    should contain  ${body}  Operation completed successfully

    ${content_type_value}=  get from dictionary  ${response.headers}  content-type
    should be equal  ${content_type_value}  application/json


