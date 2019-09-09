Feature: Join The Team Page
  As Capture QA I need to have confidence the Cloud UI works.

  @filtered_search
  Scenario: Filtered Search
   Given I open a new browser window
     And I navigate to the page
    When I input text into the search field
     And I use the pulldown menu
     And I click the Submit button
    Then I see the filtered results

  @read_more
  Scenario: Click the Read More button
   Given I open a new browser window
     And I navigate to the page
    When I click the read more button
    Then I see that a new page opened with the correct article
    
