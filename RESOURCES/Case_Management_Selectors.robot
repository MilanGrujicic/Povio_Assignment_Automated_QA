*** Settings ***
Documentation    Resource file for case management test suite.

*** Variables ***
${URL}                                  https://povio-at.herokuapp.com/
${PING_COUNT}                           1
${EMAIL}                                test_user_01@gmail.com
${PASSWORD}                             password

# PAGE ELEMENTS
${HOME_MENU_BUTTON}                     //a[text()='Home']
${SIGN_IN_MENU_BUTTON}                  //a[text()='Sign in']
${SIGN_UP_MENU_BUTTON}                  //a[text()='Sign up']

${USER_NAME_INPUT}                      //input[@id='user_name']
${EMAIL_INPUT}                          //input[@id='user_email']
${PASSWORD_INPUT}                       //input[@id='user_password']
${PASSWORD_CONFIRMATION_INPUT}          //input[@id='user_password_confirmation']

${UNIVERSAL_FORM_BUTTON}                //input[@class='button right']

${EMAIL_ALREADY_TAKEN_WARNING}          //*[text()='Email has already been taken']
${SIGNED_UP_SUCCESSFULLY_WARNING}       //*[text()='Welcome! You have signed up successfully.']

${CAMPAIGNS_BUTTON}                     //a[text()='Campaigns']
${ADD_NEW_CAMPAIGN_BUTTON}              //a[text()='Add New Campaign']
${EDIT_CAMPAIGN_BUTTON}                 //html/body/main/div/div/div/table/tbody/tr[1]/td[3]/a
${CAMPAIGN_NAME_INPUT}                  //input[@name='campaign[name]']
${CAMPAIGN_DESCRIPTION}                 //input[@name='campaign[description]']
