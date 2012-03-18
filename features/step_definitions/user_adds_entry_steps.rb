Given /^I have no entries$/ do
  Entry.destroy_all
end

Given /^I have only 1 entry titled "([^"]*)" which amounts to "([^"]*)"$/ do |title, amount|
  Entry.create(title: title, amount: amount)
end

When /^I visit the home page$/ do
  visit root_path
end

And /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, val|
  fill_in field, with: val
end

And /^I click "([^"]*)"$/ do |button|
  click_button button
end

Then /^I should see that I have "([^"]*)" income line$/ do |count|
  Entry.count.should == count.to_i
end

And /^I should see that I have "([^"]*)" total$/ do |total|
  page.should have_content(total)
end
