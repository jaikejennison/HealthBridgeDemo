Feature: Interview Demo
  As QA
  I need to have confidence that all the things work as expected on Firefox and Chrome based browsers.

@chrome @landing_page
  Scenario: Landing Page
   Given I open a new chrome browser window
    When I navigate to the home page
    Then I see the correct home page content

@chrome @contact_page
  Scenario: Contact Page
   Given I open a new chrome browser window
    When I navigate to the contact page
    Then I see the correct contact page content

@chrome @workplace_page
  Scenario: Workplace Page
   Given I open a new chrome browser window
    When I navigate to the workplace page
    Then I see the correct workplace page content

@firefox @landing_page
  Scenario: Landing Page
   Given I open a new firefox browser window
    When I navigate to the home page
    Then I see the correct home page content

@firefox @contact_page
  Scenario: Contact Page
   Given I open a new firefox browser window
    When I navigate to the contact page
    Then I see the correct contact page content

@firefox @workplace_page
  Scenario: Workplace Page
   Given I open a new firefox browser window
    When I navigate to the workplace page
    Then I see the correct workplace page content

