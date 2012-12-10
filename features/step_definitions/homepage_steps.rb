When /^I go to the home page$/ do
  visit root_path
end

Then /^I should not see "(.*?)"$/ do |message|
  page.should_not have_content message
end


Given /^I am on the home page$/ do
  visit root_path
end

Then /^I should see "(.*?)" in the "(.*?)"$/ do |output, tagname|
  page.should have_selector(tagname, :text => output)
end

When /^I click "(.*?)" link$/ do |message|
  click_link message
end