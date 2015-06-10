require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "env.rb"))

Given /^I am on the (.+) page$/ do |page_name|
  visit "/tweets/#{page_name}"
end

Given /^I fill in ([^\"]*) box with ([^\"]*)$/ do |fieldName, fieldValue|
    fill_in("tweet[name]", :with => fieldValue)
end

Given /^I fill in "([^\"]*)" box with "([^\"]*)"$/ do |fieldName, fieldValue|
    fill_in("tweet[body]", :with => fieldValue)
end

When /^I press "([^\"]*)"$/ do |button|
  click_button(button)
end

Then /^Page shows message "([^\"]*)"$/ do |text|
  page.should have_content(text)
end
