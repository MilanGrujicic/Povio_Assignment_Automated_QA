*** Settings ***
Documentation    Resource file for case management test suite.

Library    Browser

Resource    ./Case_Management_Selectors.robot

*** Keywords ***
OPEN WEBPAGE
    [Documentation]    Open browser and navigate to specific url.
    New Browser    chromium    headless=No
    Set Browser Timeout    15s
    New Page    ${URL}
    Take Screenshot

NAVIGATE TO SIGN UP PAGE
    [Documentation]    From home page, go to sign up page.
    Wait For Elements State    ${SIGN_UP_MENU_BUTTON}    enabled
    Click    ${SIGN_UP_MENU_BUTTON}

SIGN UP NEW USER
    [Documentation]    On sign up form, fill the form and create a new user.
    Type Text    ${USER_NAME}    name
    Type Text    ${EMAIL}    fdas@gmail.com
    Type Text    ${PASSWORD}    password
    Type Text    ${PASSWORD_CONFIRMATION}    password
    Wait For Elements State    ${BUTTON_RIGHT}    enabled
    Click    ${BUTTON_RIGHT}

LOG IN AS USER
    [Documentation]    From home page, select sign in and sign in with users credentials.
    Wait For Elements State    ${SIGN_IN_MENU_BUTTON}    enabled
    Click    ${SIGN_IN_MENU_BUTTON}
    Type Text    ${EMAIL}    fdas@gmail.com
    Type Text    ${PASSWORD}    password
    Wait For Elements State    ${BUTTON_RIGHT}    enabled
    Click    ${BUTTON_RIGHT}

ADD A NEW CAMPAIGN
    [Documentation]    As a logged in user, navigate to campaing page and add a new campaing.
    Wait For Elements State    ${CAMPAIGNS_BUTTON}    enabled
    Click    ${CAMPAIGNS_BUTTON}
    Wait For Elements State    ${ADD_NEW_CAMPAING_BUTTON}    enabled
    Click    ${ADD_NEW_CAMPAING_BUTTON}
    Type Text    ${CAMPAIGN_NAME}    campaign
    Type Text    ${CAMPAIGN_DESCRIPTION}    description
    Wait For Elements State    ${BUTTON_RIGHT}    enabled
    Click    ${BUTTON_RIGHT}