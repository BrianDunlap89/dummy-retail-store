Feature: Send Reminders of Upcoming Shoe Releases to Users Who Opt In
    In order to be reminded of upcoming shoe releases 
    As a customer of the Shoe Store 
    I want to be able to submit my email address to subscribe to reminders

  Scenario Outline: Subscribe to Receive New Releases by Month
      Given I am on the Shoe Store's home page
      Then a form field to subscribe to each month's new releases should be present
      When I enter my "<email address>" into the form field 
      And I click on the button to submit the email address
      Then a message should appear on the page
      And the message should give feedback tailored specifically to the user

      Examples:
        | email address |
        | morgan@email.com |
        | brian@email.com |
        | lynda@email.com |