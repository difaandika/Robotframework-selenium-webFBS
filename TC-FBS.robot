*** Settings ***
Library     SeleniumLibrary
Resource    steps.robot


*** Test Cases ***
Success Login Trader
    Open login trader page
    Input email field
    Input password field
    Click login button
    Close Browser

Register Trader
    Open register trader page
    Fill email field trader register
    Fill name field trader register
    Click register trader button
    Close Browser

Success Register Partner
    Open register partner page
    Fill email field partner register
    Fill name field partner register
    Click register partner button
    Close Browser

Verify section broker terpercaya
    Open browser fbs
    Contain element broker terpercaya
    Close Browser

Verify section variety trading account
    Open browser fbs
    Contain element variety account
    Close Browser

Verify section benefit FBS account
    Open browser fbs
    Contain element benefit FBS
    Close Browser

Verify section benefit FBS account
    Open browser fbs
    Contain element deposit method payment
    Close Browser

Verify section latest news
    Open browser fbs
    contain element news
    Close Browser

Get info comparison account
    Open browser fbs
    Go to comparation trading account

Get info finance
    Login valid credential
    Go to finances page
    Close Browser

Get info loyalty program
    Login valid credential
    Go to loyalty program page
    Close Browser

Get info Promosi
    Login valid credential
    Go to promotion page
    Close Browser

Get info analytics & education
    Login valid credential
    Go to analytics & education page
    Close Browser

Get info analytics & education for beginer
    Login valid credential
    Go to analytics & education page
    Click show beginer material button
    Close Browser

Get info analytics & education for intermediate
    Login valid credential
    Go to analytics & education page
    Click show intermediate material button
    Close Browser

Get info analytics & education for expert
    Login valid credential
    Go to analytics & education page
    Click show expert material button
    Close Browser

Play video pelajaran forex
    Open browser fbs
    Click analis&pendidikan navbar
    Click Element    ${videoPelajaran}
    Wait Until Element Is Visible    ${video1}
    Click Element    ${video1}
    Wait Until Execute JavaScript return ${video1}.paused === false
