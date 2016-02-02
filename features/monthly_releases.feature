Feature: Display New Releases Each Month
    In order to view shoes being newly released each month 
    As a customer of the Shoe Store
    I want to be able to visit a link for each month and see the shoes being released

Background:
    Given I am on the Shoe Store's home page

  Scenario Outline: Display a Month's New Releases When a User Clicks on It
      Given I click on "<month>"
      Then I should see shoes displayed on the page
      And I should see a suggested price for each shoe
      And Each price should be a valid value
      And I should see a small blurb for each shoe
      And I should see an image for each shoe
      And Each image should have a valid file extension

      Examples:
        | month |
        | January |
        | February |
        | March |
        | April |
        | May |
        | June |
        | July |
        | August |
        | September |
        | October |
        | November |
        | December |
        