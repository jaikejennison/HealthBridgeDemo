Feature: Interview Demo
  As QA
  I need to have confidence that all the things work as expected on Firefox and Chrome based browsers.

@chrome @landing_page
  Scenario: Landing Page
   Given I open a new chrome browser window
    When I navigate to the Home page
    Then I see the correct page

@chrome @contact_page
  Scenario: Contact Page
   Given I open a new chrome browser window
    When I navigate to the Contact page
    Then I see the correct page

@chrome @workplace_page
  Scenario: Workplace Page
   Given I open a new chrome browser window
    When I navigate to the Workplace page
    Then I see the correct page

@chrome @search
  Scenario: Search element
   Given I open a new chrome browser window
     And I navigate to the landing page
    When I click the search element
    Then I see the search element
    When I search for help
    Then I see the correct results

@firefox @landing_page
  Scenario: Landing Page
   Given I open a new firefox browser window
    When I navigate to the Home page
    Then I see the correct page

@firefox @contact_page
  Scenario: Contact Page
   Given I open a new firefox browser window
    When I navigate to the Contact page
    Then I see the correct page

@firefox @workplace_page
  Scenario: Workplace Page
   Given I open a new firefox browser window
    When I navigate to the Workplace page
    Then I see the correct page

@firefox @search
  Scenario: Search element
   Given I open a new firefox browser window
     And I navigate to the landing page
    When I click the search element
    Then I see the search element
    When I search for help
    Then I see the correct results
