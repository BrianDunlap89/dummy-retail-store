Then(/^a form field to subscribe to each month's new releases should be present$/) do
  expect(HomePage.new($browser).subscribe_field_exists?).to be true
end

When(/^I enter my "([^"]*)" into the form field$/) do |email|
  @email = email
  @homepage = HomePage.new($browser)
  @homepage.input_email(@email)  
end

When(/^I click on the button to submit the email address$/) do
  @homepage.submit_email
end

Then(/^a message should appear on the page$/) do
  expect(@homepage.flash_response.present?).to be true
end

Then(/^the message should give feedback tailored specifically to the user$/) do
  expect("#{@homepage.flash_response.text}").to eql("Thanks! We will notify you of our new shoes at this email: #{@email}")
end