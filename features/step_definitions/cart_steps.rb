Given /^I am on the 'Sign up' page$/ do
  visit sign_up_path
end

Given /^I enter in "(.*?)" for "(.*?)"$/ do |value, field|
  fill_in value, :with => field
end

Given /^I am on the 'Sign_in' page$/ do
  visit log_in_path
end


