*** Settings ***
Resource         ${CURDIR}/../resources/import.robot
Suite Teardown    Browser.Close Browser

*** Test Cases ***
TC004 - เข้าสู่ระบบด้วยบัญชีที่ถูกต้อง
    [Documentation]    Author : Kornnisa
    common.Open website
    common.Handle random popup
    navigatebar_page.Click icon profile
    navigatebar_page.Click menu sign in
    common.Handle random popup
    signin_feature.Sign in to doppee shop  email=${signin_page.correct_email}  password=${signin_page.correct_password}
    common.Handle random popup
    navigatebar_page.Verify login success after create account    email=${signin_page.correct_email}


TC005 - เข้าสู่ระบบด้วยบัญชีที่ไม่ถูกต้อง
    [Documentation]    Author : Kornnisa
    common.Open website
    common.Handle random popup
    navigatebar_page.Click icon profile
    navigatebar_page.Click menu sign in
    common.Handle random popup
    signin_feature.Sign in to doppee shop  email=${signin_page.correct_email}  password=${signin_page.wrong_password}
    Browser.Get text    selector=css=iframe.w-full >>> css=#err    assertion_operator===    assertion_expected=Invalid credentials.