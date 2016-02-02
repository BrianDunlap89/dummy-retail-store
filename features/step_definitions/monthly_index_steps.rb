Then (/^I should see shoes displayed on the page$/) do
  expect(MonthPage.new($browser).shoes_exist?).to be true
end

Then(/^I should see a small blurb for each shoe$/) do
  expect(MonthPage.new($browser).blurbs_exist?).to be true
end

Then(/^I should see a suggested price for each shoe$/) do
  expect(MonthPage.new($browser).prices_exist?).to be true
end

Then (/^Each price should be a valid value$/) do
  expect(MonthPage.new($browser).prices_valid?).to be true
end

Then(/^I should see an image for each shoe$/) do
  expect(MonthPage.new($browser).images_exist?).to be true
end

Then(/^Each image should have a valid file extension$/) do
  expect(MonthPage.new($browser).images_valid?).to be true
end
