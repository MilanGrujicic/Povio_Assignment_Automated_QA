*** Settings ***
Documentation    The case management test suite covers the basic actions a user can take.

Resource    RESOURCES/Case_Management_Keywords.robot
Resource    RESOURCES/Case_Management_Selectors.robot

Library    RequestsLibrary

Test Setup    OPEN WEBPAGE


*** Test Cases ***
Perform Health Check
    [Documentation]    Sends a GET request to determined URL and checks for status OK.
    [Tags]    health_check
    Create Session    health_check    ${URL}
    ${response}=    GET On Session    health_check    /
    Log    Response status: ${response.status_code}
    Should Be Equal As Numbers    ${response.status_code}    200

Register New Valid User
    [Documentation]    Sign up new user.
    [Tags]    register_user
    NAVIGATE TO SIGN UP PAGE
    SIGN UP NEW USER

User Adds New Campaign
    [Documentation]    As a newly-generated user, create a campaign.
    [Tags]    add_new_campaign
    LOG IN AS USER
    ADD A NEW CAMPAIGN

User Edits Existing CAMPAIGN
    [Documentation]    As as newly-generated user, edit the latest campaign.
    [Tags]    edit_campaign
    LOG IN AS USER
    EDIT LATEST campaign
