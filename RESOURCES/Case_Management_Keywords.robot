*** Settings ***
Documentation    Resource file for case management test suite.

Library    Browser

Resource    ./Case_Management_Selectors.robot

*** Keywords ***
OPEN WEBPAGE
    [Documentation]    Open browser and navigate to specific URL.
    New Browser    chromium    headless=No
    Set Browser Timeout    15s
    New Page    ${URL}
    Take Screenshot

NAVIGATE TO SIGN UP PAGE
    [Documentation]    From home page, go to sign up page.
    Wait For Elements State    ${SIGN_UP_MENU_BUTTON}    enabled
    Click    ${SIGN_UP_MENU_BUTTON}
    Take Screenshot

SIGN UP NEW USER
    [Documentation]    On sign up form, fill the form and create a new user.
    Type Text    ${USER_NAME_INPUT}    name
    Type Text    ${EMAIL_INPUT}    ${EMAIL}
    Type Text    ${PASSWORD_INPUT}    ${PASSWORD}
    Type Text    ${PASSWORD_CONFIRMATION_INPUT}    password
    Wait For Elements State    ${UNIVERSAL_FORM_BUTTON}    enabled
    Click    ${UNIVERSAL_FORM_BUTTON}
    ${is_warning_present}=    Run Keyword And Return Status    Get Element    ${EMAIL_ALREADY_TAKEN_WARNING}
    IF    ${is_warning_present} == True
        Fail    Email has already been taken.
        Take Screenshot
    END
    Wait For Elements State    ${SIGNED_UP_SUCCESSFULLY_WARNING}    visible
    Take Screenshot

LOG IN AS USER
    [Documentation]    From home page, select sign in and sign in with users credentials.
    Wait For Elements State    ${SIGN_IN_MENU_BUTTON}    enabled
    Click    ${SIGN_IN_MENU_BUTTON}
    Type Text    ${EMAIL_INPUT}    ${EMAIL}
    Type Text    ${PASSWORD_INPUT}    ${PASSWORD}
    Wait For Elements State    ${UNIVERSAL_FORM_BUTTON}    enabled
    Click    ${UNIVERSAL_FORM_BUTTON}
    Take Screenshot

ADD A NEW CAMPAIGN
    [Documentation]    As a logged in user, navigate to campaign page and add a new campaign.
    Wait For Elements State    ${CAMPAIGNS_BUTTON}    enabled
    Click    ${CAMPAIGNS_BUTTON}
    Wait For Elements State    ${ADD_NEW_CAMPAIGN_BUTTON}    enabled
    Click    ${ADD_NEW_CAMPAIGN_BUTTON}
    Type Text    ${CAMPAIGN_NAME_INPUT}    campaign
    Type Text    ${CAMPAIGN_DESCRIPTION}    description
    Wait For Elements State    ${UNIVERSAL_FORM_BUTTON}    enabled
    Click    ${UNIVERSAL_FORM_BUTTON}
    Take Screenshot

EDIT LATEST CAMPAIGN
    [Documentation]    As a freshly-generated user edit the latest campaign.
    Wait For Elements State    ${CAMPAIGNS_BUTTON}    enabled
    Click    ${CAMPAIGNS_BUTTON}
    Wait For Elements State    ${EDIT_CAMPAIGN_BUTTON}    enabled
    Click    ${EDIT_CAMPAIGN_BUTTON}
    Type Text    ${CAMPAIGN_NAME_INPUT}    edited_campaign
    Type Text    ${CAMPAIGN_DESCRIPTION}    edited_description
    Take Screenshot
