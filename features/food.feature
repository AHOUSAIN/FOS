Feature: food
In order to track my clients
As a vet
I want to be able to list, create, update, and delete food information
Background:
Given an initial business

Scenario: List food
Given I am on the 'foods' page
Then in the "body", I should see "Listing foods"
And in the "th", I should see "Name" 
And in the "th", I should see "Price" 
And in the "th", I should see "Available" 
And in the "td", I should see "Apple"
And in the "td", I should see "2.0"
And in the "td", I should see "true"
And in the "body", I should see a link to "New Food"


Scenario: Create Food
Given I am on the 'new food' page
When I enter "Apple" for "Name"
And I enter "2.0" for "Price"
And I check "Available"
And I click button "Create Food"
Then I should see "Food was successfully created."


Scenario: Update Food
Given I am on the 'foods' page
When I follow the "Edit" link for "Apple"
And I change the price "2.0" to "4.0"
And I click the button "Update Food"
Then in the "body", I should see "Food was successfully updated."

Scenario: Delete Food
Given I am on the 'foods' page
When I follow the "Destroy" link for "Apple"
Then I should not see "Apple"
