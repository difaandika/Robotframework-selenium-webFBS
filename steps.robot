*** Settings ***
Library           SeleniumLibrary

*** Variables ***
#Login Page Element
${url}  https://ind-fbs-broker.com/
${emailfield}   id=email
${passwordfield}    id=password
${buttonLogin}  xpath=//button[@type='submit']
${facebookLogin}    xpath=//button[@class='btn-social btn-social__fb']
${googleLogin}  xpath=//button[@class='btn-social btn-social__google']
${appleidLogin}     xpath=//button[@class='btn-social btn-social__apple']
${forgotPasswordButton}   xpath=//a[normalize-space()='Forgot your password?']
${registrationButton}   xpath=//a[normalize-space()='Registration']
${fbsLogoLoginPage}     xpath=//a[normalize-space()='']//img
${privacyPolicyButton}  xpath=//a[normalize-space()='Privacy Policy']
${textLoginPage}    xpath=//h1[normalize-space()='Log in to your FBS account']

#Dashboard Element
${buttonOpenAccount}    xpath=//a[@class='menu-button menu-button--sign-in']
&{buttonMasuk}      xpath=//span[normalize-space()='Masuk']
${textTradingForex}     xpath=//h1[contains(text(),'Trading Forex, Indeks, Saham, dan Logam dengan bro')]
${cardcentAkun}     xpath=//body/div[@class='main-page']/div[@class='promo']/div[@class='promo__content']/div[@class='container promo__content-inner']/div[@class='features']/div[1]
${buttonAccount}    xpath=//a[@class='js-promo-btn btn js-promo-btn_color-0 btn_arrow site__open-account']

#LOGIN PAGE
${textLoginPage}    xpath=//h1[normalize-space()='Log in ke akun FBS Anda']
${buttonDaftarMitra}    xpath=//a[normalize-space()='Daftar sebagai Mitra']
${emailfield}   xpath=//input[@id='email']
${passwordfield}    xpath=//input[@id='password']
${loginButton}  xpath=//div[@class='button__wrapper']

#REGISTER TRADER
${registerTraderEmailField}   xpath=//input[@id='email']
${registerTraderNameField}    xpath=//input[@id='name']
${registerTraderButton}     xpath=//span[@translate='register-trader.label.trader']
${cardField}    xpath=//div[@class='b-w-max-300 b-style m-bottom padding-primary']

#REGISTER PARTNER
${registerPartnerEmailField}   xpath=//input[@id='email']
${registerPartnerNameField}    xpath=//input[@id='name']
${registerPartnerButton}    xpath=//span[@translate='register-trader.label.partner']

#Trading navbar
${tradingNav}   xpath=//a[@class='js-menu-link menu-lower__link']

#program IB navbar
${programIBnav}     xpath=//a[normalize-space()='Program IB']

#promosi navbar
${promosiNav}   xpath=//a[normalize-space()='Promosi']

#analis&pendidikan navbar
${analis&pendidikanNav}     xpath=//span[normalize-space()='Analisis & Pendidikan']
${videoPelajaran}   xpath=//a[normalize-space()='Video pelajaran']
${video1}   xpath=//li[1]//div[1]//div[1]//div[1]

#Click tentang kami navbar
${tentang kami}     xpath=//a[normalize-space()='Tentang kami']

#dashboard
${financeNavbar}    xpath=//a[@class='navbar-top__item link']//span[@translate='header.label.finance'][normalize-space()='Keuangan']
${LoyaltyProgramNavbar}    xpath=//a[@class='navbar-top__item link']//span[@translate='header.label.loyalty'][normalize-space()='Program Loyalitas']
${PromotionNavbar}    xpath=//a[@class='navbar-top__item link']//span[@translate='header.label.promotions'][normalize-space()='Promosi']
${Analitycs&EducationNaavbar}    xpath=//span[@translate='content.label.title']

*** Keywords ***

Open register trader page
    open browser    ${url}  chrome
    Click Element   ${buttonOpenAccount}

Open register partner page
    open browser    ${url}  chrome
    Click Element   ${buttonOpenAccount}
    Wait Until Element Is Visible    ${buttonDaftarMitra}
    Click Element    ${buttonDaftarMitra}

Open login trader page
    open browser    ${url}  chrome
    Click Element    ${buttonOpenAccount}
    Click Element    //a[normalize-space()='Log in']

Input email field
    Input Text    ${emailfield}    jdgapjdgap@gmail.com
Input password field
    Input Password    ${passwordfield}    Pangkatv3
Click login button 
    Click Element    //span[@translate='login.label.login']

Open login partner page
    open browser    ${url}  chrome
    Click Element    ${buttonMasuk}

Open browser fbs
    open browser     ${url}  chrome

Click trading navbar
    Click Element    ${tradingNav}

Click program IB navbar
    Click Element    ${programIBnav}

Click promosi navbar
    Click Element    ${promosiNav}

Click analis&pendidikan navbar
    Click Element    ${analis&pendidikanNav}

Click tentang kami navbar
    Click Element    ${tentang kami}

Fill email field trader register
    Wait Until Element Is Visible    ${cardField}
    Click Element    ${registerTraderEmailField}
    Input Text    ${registerTraderEmailField}    trader@gmail.com

Fill name field trader register
    Click Element    ${registerTraderNameField}
    Input Text    ${registerTraderNameField}    trader

Click register trader button
    Click Element    ${registerTraderButton}

Fill email field partner register
    Click Element    ${registerPartnerEmailField}
    Input Text    ${registerPartnerEmailField}    partner@gmail.com

Fill name field partner register
    Click Element    ${registerPartnerNameField}
    Input Text    ${registerPartnerNameField}    partner

Click register partner button
    Click Element    ${registerPartnerButton}

Contain element broker terpercaya
    Element Should Contain     ${textTradingForex}     Trading Forex, Indeks, Saham, dan Logam dengan broker yang tepercaya
    Element Should Be Visible    ${cardcentAkun}
    
Contain element variety account
    Element Should Be Visible    //h2[normalize-space()='Pilih dari berbagai akun trading']
    Element Should Be Visible    //div[@class='swiper-wrapper accounts-types__slider-wrap']
    
Contain element benefit FBS
    Element Should Be Visible    //h2[normalize-space()='Keuntungan trading di FBS']
    Element Should Be Visible    //body[1]/div[3]/section[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]
    Element Should Be Visible    //body[1]/div[3]/section[2]/div[2]/div[1]/div[1]/div[1]/table[1]/tbody[1]/tr[2]

Contain element deposit method payment
    Element Should Be Visible    //h2[contains(text(),'Deposit dengan sistem pembayaran bank lokal DI IND')]
    Element Should Be Visible    //div[@class='payments-line__logos']

contain element news
    Element Should Be Visible    //h2[normalize-space()='Persiapkan diri dengan berita terbaru']
    Element Should Be Visible    //div[@class='excerpts-news__inner']

Login valid credential
    open browser    ${url}  chrome
    Click Element    ${buttonOpenAccount}
    Click Element    //a[normalize-space()='Log in']
    Input Text    ${emailfield}    jdgapjdgap@gmail.com
    Input Text    ${passwordfield}    Pangkatv3
    Click Element    //span[@translate='login.label.login']

Go to finances page
    Wait Until Element Is Visible    ${financeNavbar}
    Click Element    ${financeNavbar}

Go to promotion page
    Wait Until Element Is Visible    ${PromotionNavbar}
    Click Element    ${LoyaltyProgramNavbar}

Go to loyalty program page
    Wait Until Element Is Visible    ${LoyaltyProgramNavbar}
    Click Element    ${PromotionNavbar}

Go to analytics & education page
    Wait Until Element Is Visible    ${Analitycs&EducationNaavbar}
    Click Element    ${Analitycs&EducationNaavbar}

Click show beginer material button
    Wait Until Element Is Visible    //li[1]//card-wrapper[1]//div[1]//div[1]//div[1]//div[1]//div[1]//btn[1]//button[1]
    Click Element    //li[1]//card-wrapper[1]//div[1]//div[1]//div[1]//div[1]//div[1]//btn[1]//button[1]

Click show intermediate material button
    Wait Until Element Is Visible    //li[1]//card-wrapper[1]//div[1]//div[1]//div[1]//div[1]//div[1]//btn[1]//button[1]
    Click Element    //li[1]//card-wrapper[1]//div[1]//div[1]//div[1]//div[1]//div[1]//btn[1]//button[1]

Click show expert material button
    Wait Until Element Is Visible    //li[1]//card-wrapper[1]//div[1]//div[1]//div[1]//div[1]//div[1]//btn[1]//button[1]
    Click Element    //li[1]//card-wrapper[1]//div[1]//div[1]//div[1]//div[1]//div[1]//btn[1]//button[1]
    
Go to comparation trading account 
    Click Element    //a[@class='btn accounts__btn-more']
    Wait Until Element Is Visible    //div[@class='inner-promo__content']
    Element Should Contain    //h1[normalize-space()='Akun Trading']    Akun Trading
    Wait Until Element Is Visible    //div[@class='inner-main inner-main_trading']

