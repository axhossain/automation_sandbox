# login/logout steps
Given /^that I am logged into the application$/ do
  login_action
end
Given /^that I am logged out of the application$/ do
  logout_action
end
When /^I attempt an invalid login by entering "([^"]*)"$/ do |arg|
  invalid_login arg
end

# screen scanner/custom screenshot steps
Then /^I scan "([^"]*)" and take screen shot$/ do |arg|
  screen_scanner arg
end
When /^I take a screenshot of the "([^"]*)"$/ do |arg|
  custom_screenshot arg
end

# button steps
When /^I touch the button "([^"]*)"$/ do |arg|
  touch_button arg
end
When /^button displayed on the screen "([^"]*)"$/ do |arg|
  check_button arg
end

# text steps
Then /^message displayed on the screen "([^"]*)"$/ do |arg|
  check_text arg
end
When /^I touch the text "([^"]*)"$/ do |arg|
  touch_text arg
end

# property validator steps
Then /^"([^"]*)" field's "([^"]*)" property value should be "([^"]*)"$/ do |arg1, arg2, arg3|
  property_validator arg1, arg2, arg3
end

# save member number toggle steps
When /^I toggle save member number switch$/ do
  performAction('click_on_view_by_id', 'login_save_userid_switch')
end

# menu steps
When /^I select "([^"]*)" from menu$/ do |arg|
  performAction('select_from_menu', arg)
end

# selective row picker steps
When /^I pick the first account available$/ do
  select_account
end
Then(/^I pick "([^"]*)" and "([^"]*)" accounts and take screen shot$/) do |arg1, arg2|
  select_transfer_accounts arg1, arg2
end
Then /^I pick the first vendor available$/ do
  select_vendor
end
Then(/^I pick the first offer available$/) do
  select_cash_back_offers
end

# soft keyboard / send keys steps
Then /^I edit the amount field in the "([^"]*)" screen$/ do |arg|
  calc_field_edit arg
end
When /^I touch the key on the soft keyboard "([^"]*)"$/ do |arg|
  send_keys arg
end

# prompt validation steps
Then /^I check for prompt with heading "([^"]*)" message "([^"]*)" buttons "([^"]*)" "([^"]*)"$/ do |arg1, arg2, arg3, arg4|
  prompt_validator arg1, arg2, arg3, arg4
end

# location steps
When /^I enter the text in the search field with user logged out "([^"]*)"$/ do |arg|
  enter_location_info arg
end
Then /^I should see ATM, Branch locations displayed with distance unit in miles$/ do
  inspect_location_list
end

# test cleanup steps
When /^shutting down test server on the device$/ do
  shutdown_test_server
end

# wait steps
Then(/^I wait "([^"]*)" seconds$/) do |arg|
  wait_seconds arg
end

# random amount picker
When /^I enter a random amount$/ do
  random_amount_picker
end

# added for regression tests
Given(/^I attempt a full login by entering "([^"]*)", "([^"]*)" and take a screen shot$/) do |userid, password|
  full_login userid, password
end

When /^login with special credentials "([^"]*)"$/ do |arg|
  login_action_spl arg
end

Then(/^I navigate "([^"]*)"$/) do |arg|
  navigation_action arg
end

Then(/^I pick same "([^"]*)" and "([^"]*)" accounts and take screen shot$/) do |arg1, arg2|
  select_transfer_same_accounts arg1, arg2
end

Then(/^transfer details From should display "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  transfer_details_validator arg1, arg2, arg3
end

Then(/^transfer details To should display "([^"]*)" and "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  transfer_details_validator arg1, arg2, arg3
end

Then(/^session timeout expires and displays message "([^"]*)"$/) do |arg|
  session_timeout arg
end

Then(/^I check for prompt with heading "([^"]*)" message one "([^"]*)", "([^"]*)", "([^"]*)" message two "([^"]*)", "([^"]*)", "([^"]*)" message three "([^"]*)", "([^"]*)" buttons "([^"]*)" "([^"]*)"$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11|
 extended_prompt_validator arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11
end

Then(/^message not displayed on the screen "([^"]*)"$/) do |arg|
  check_no_text arg
end

Then(/^I toggle remember this device switch$/) do
  performAction('click_on_view_by_id', 'btn_toggle')
end

Then(/^I force the application to stop for FI "([^"]*)"$/) do |arg|
  application_force_stop arg
end

Then(/^I restart the test server$/) do
  restart_test_server
end

Then(/^I reinstall the application$/) do
  application_reinstall
end