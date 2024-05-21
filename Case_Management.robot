*** Settings ***
Documentation    The case management test suite covers the creation and closing of cases withing the dashboard.

Resource    RESOURCES/Case_Management_Keywords.robot
Resource    RESOURCES/Case_Management_Selectors.robot

Test Setup    OPEN WEBPAGE


*** Test Cases ***
Register New Valid User
    NAVIGATE TO SIGN UP PAGE
    SIGN UP NEW USER

User Add New Campaign
    LOG IN AS USER
    ADD A NEW CAMPAIGN