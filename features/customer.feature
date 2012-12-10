Feature: Customer
  In order to signup to be a customer
  As a user
  I want to register
 Background:
Given an initial business

Scenario: List Customer
      Given I am on the 'Customer' page
      Then in the "title", I should see "Customers"
      And in "th", I should see "First name"
   	And in "th", I should see "Last name"
	And in "th", I should see "Phone"
	And in "th", I should see "Email"
      And in the "th", I should see "Address"
      And in the "body", I should see a link to "Add a New Customer"

	 Scenario: 'new' Customer
	Given I am on the 'new Customer' page
	When I enter "Nawal" for "First name"
	And I enter "Behih" for "Last name"
	And I enter "97433750927" for "Phone"
	And I enter "Al Nasr" for "Address"
	And I enter "nabehih@gmail.com" for "Email"
	And I click "Create Customer"
	Then I should be able to see "Customer was successfully created."
	
	
	Scenario: Update Customer
	   Given I am on the 'Customer' page
	When I follow the "Edit" link for "nabehih@gmail.com"
	And I click the button "Update"
	Then I should see "Customer was successfully updated"
	
	Scenario: Delete Customer
	Given I am on the 'Customer' page
	When I follow the "Destroy" link for "nabehih@gmail.com"
	Then I should not see "nabehih@gmail.com"
