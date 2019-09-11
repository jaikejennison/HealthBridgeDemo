Feature: Join The Team Page
  As QA
  I need to have confidence that all Join The Team Page elemnts work and filter as expected.

@search
  Scenario: Search only
   Given I open a new chrome browser window
     And I navigate to the Join The Team page
    When I check the search element
    Then I see the correct filtered list

@category_filter
  Scenario: Category Filter only
   Given I open a new chrome browser window
     And I navigate to the Join The Team page
    When I check the category filter element
    Then I see the correct filtered list

@job_type_filter
  Scenario: Job Type Filter only
   Given I open a new chrome browser window
     And I navigate to the Join The Team page
    When I check the job type filter element
    Then I see the correct filtered list

@location_filter
  Scenario: Location Filter only
   Given I open a new chrome browser window
     And I navigate to the Join The Team page
    When I check the location filter element
    Then I see the correct filtered list

  @search_and_filter
  Scenario: Search and Category, Job Type, Location Filters
   Given I open a new chrome browser window
     And I navigate to the Join The Team page
    When I check the search and filter elements
    Then I see the correct filtered list

  @read_more
  Scenario: Click the Read More button
   Given I open a new chrome browser window
     And I navigate to the Join The Team page
    When I click the read more button
    Then I am directed to the correct new page
