Feature: Standard Business
  As a Customer
  I want to be able to view certain information
  So I can have confidence in the System

 Scenario: Do not see the default rails page
  When I go to the home page
  Then I should not see "you're riding Ruby on rails!"
  And I should not see "About your application's environment"
  And I should not see "Create your database"

Scenario: View 'Welcome Pet Owners!' in header
	Given I am on the home page
	Then I should see "Welcome Pet Owners" in the "header" 

Scenario: View 'About Us'
  Given I am on the home page
  When I click "About Us" link
  Then I should see "About Us" in the "title"
 
 Scenario: View 'Contact Us'
	Given I am on the home page
	When I click "Contact Us" link
	Then I should see "We welcome your feedback" in the "title"
	
 Scenario: View 'Privacy Policy'
	Given I am on the home page
	When I click "Privacy Policy" link
	Then I should see "Privacy Policy" in the "title"
	
 Scenario: View 'About Us' in footer
	Given I am on the home page
	Then I should see "About Us" in the "footer"
	
Scenario: View 'Contact Us' in footer
	Given I am on the home page
	Then I should see "Contact Us" in the "footer"

 Scenario: View 'Owners' in side Navigation
    Given I am on the home page
	Then I should see "Owners" in the "nav"
	
 Scenario: View 'Pets' in side Navigation
	Given I am on the home page
	Then I should see "Pets" in the "nav"	




 
	
