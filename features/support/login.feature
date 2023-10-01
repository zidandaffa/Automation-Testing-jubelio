Feature: Login Page with valid credentials

@login @regresion
Scenario: User success Login with valid credential in Jubelio page
  Given User visit "https://app2.jubelio.com/login"
  When User input email in login credential
  And User input password in login credential
  And User click login button
  Then User redirect to dashboard
  And User see title "3 Langkah mudah untuk memulai..." text
