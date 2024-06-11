*** Settings ***
Library            RequestsLibrary
Library            FakerLibrary
Library            String
Library            XML

*** Variables ***
${BASE_URL}                                  https://serverest.dev


*** Keywords ***
User faker
    ${NAMEFAKE}                              FakerLibrary.First Name
    ${EMAILFAKE}                             Set Variable    ${NAMEFAKE}@qa.com
    ${PASSWORDFAKE}                          FakerLibrary.Password
    ${ADMIN}                                 Set Element Text    true

    
    Set Global Variable                      ${NAMEFAKE}
    Set Global Variable                      ${EMAILFAKE}
    Set Global Variable                      ${PASSWORDFAKE}
    Set Global Variable                      ${ADMIN}