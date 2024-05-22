*** Settings ***
Documentation    Resource file for case management test suite.

*** Variables ***
${URL}                https://povio-at.herokuapp.com/

# PAGE ELEMENTS
${HOME_MENU_BUTTON}               //a[text()='Home']
${SIGN_IN_MENU_BUTTON}            //a[text()='Sign in']
${SIGN_UP_MENU_BUTTON}            //a[text()='Sign up']

${USER_NAME}                      //input[@id='user_name']
${EMAIL}                          //input[@id='user_email']
${PASSWORD}                       //input[@id='user_password']
${PASSWORD_CONFIRMATION}          //input[@id='user_password_confirmation']

${BUTTON_RIGHT}                   //input[@class='button right']

${EMAIL_ALREADY_TAKEN_WARNING}    //*[@id="error_explanation"]/ul/li/text()

${CAMPAIGNS_BUTTON}               //a[text()='Campaigns']
${ADD_NEW_CAMPAING_BUTTON}        //a[text()='Add New Campaign']
${EDIT_CAMPAING_BUTTON}           //a[text()='Edit']
${CAMPAIGN_NAME}                  //input[@name='campaign[name]']
${CAMPAIGN_DESCRIPTION}           //input[@name='campaign[description]']