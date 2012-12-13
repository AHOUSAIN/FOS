Feature: cart
In order to track my clients
As a user
I want to be able to see the session

Background:
Given an initial business



Scenario: Sign up
Given I am on the 'Sign up' page
And I enter "nbehih@gmail.com" for "Email"
And I enter in "Password" for "ahousain"
And I enter in "Password Confirmation" for "ahousain"
And I click "Sign up"
Then I should be able to see "Sign up!"

Scenario: Sgin in
Given I am on the 'Sign_in' page
And I enter "nbehih@gmail.com" for "Email"
And I enter in "Password" for "ahousain"
And I click "Log in"
Then I should be able to see "Logged in!"

    