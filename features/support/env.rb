require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'page-object'
require 'rspec'

$browser = Watir::Browser.new :firefox

at_exit do 
  $browser.close
end