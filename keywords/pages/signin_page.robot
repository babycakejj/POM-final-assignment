*** Keywords ***
Click create account on signin page
    common.Handle random popup
    Wait for elements state  selector=${signin_locator.btn_create_account}  state=visible  
    Browser.Wait for load state    state=networkidle    timeout=${TIMEOUT}        
    Browser.Click  selector=${signin_locator.btn_create_account}


Fill email
    [Arguments]    ${email}=${signin_page.default_email}
    Browser.Fill text    selector=${signin_locator.txt_email}    txt=${email}


Fill password
    [Arguments]    ${password}=${signin_page.default_password}
    Browser.Fill text    selector=${signin_locator.txt_password}    txt=${password}


Click for sign in
    Browser.Click    selector=${signin_locator.btn_signin}    
    

