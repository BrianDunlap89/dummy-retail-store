Given(/^I am on the Shoe Store's home page$/) do
  HomePage.new($browser).open
end

Given(/^I click on "(.*?)"$/) do |month|
  HomePage.new($browser).click_month(month)
end
