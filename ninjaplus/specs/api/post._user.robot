*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     ../../resources/lib/db.py


*** Test Cases ***
Create a new user
    remove user by email    bruc@wayne.com                    
    create session      nplus               http://ninjaplus-api:3000
    &{body}=            create dictionary   full_name=Bruci Wayne   email=bruc@wayne.com   password=pwd123
    &{headers}=         create dictionary   Content-Type=application/json

    ${response}=        post request        nplus      /user   data=${body}    headers=${headers}
    log to console      ${response.text}
    log                 ${response.text}
    ${code}=            convert to string   ${response.status_code}    
    should be equal     ${code}             200

Email required               
    create session                          nplus                   http://ninjaplus-api:3000
    &{body}=                                create dictionary       full_name=Bruci Wayne   email=${EMPTY}   password=pwd123
    &{headers}=                             create dictionary       Content-Type=application/json
                        
    ${response}=                            post request            nplus      /user   data=${body}    headers=${headers}
    log to console                          ${response.text}    
    log                                     ${response.text}    
    ${code}=                                convert to string       ${response.status_code}    
    should be equal                         ${code}                 412      
    dictionary should contain value         ${response.json()}      Validation notEmpty on email failed