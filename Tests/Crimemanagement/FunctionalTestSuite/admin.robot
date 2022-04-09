*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}   http://127.0.0.1:5000


*** Test Cases ***
Admin Login test
    [Documentation]  Can admin able to login?
    [Tags]  admin
    open browser  ${web_url}    chrome
    maximize browser window
    input text  name:username   admin
    sleep  1s
    input text  name:password   12345
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s

View Report test
    [Documentation]   Once admin logged in can able to view report?
    [Tags]  admin
    click link  xpath=//html/body/nav/a[1]
    sleep  2s

Filter With Date test
    [Documentation]  Admin Able to Filter With Date?
    [Tags]  admin
    click link  xpath=//html/body/nav/a[2]
    sleep  3s

Admin Logout test
    [Documentation]  Can admin able to logout?
    [Tags]  admin
    click link  xpath=//html/body/nav/a[3]
    sleep  2s
    close browser

*** Keywords ***