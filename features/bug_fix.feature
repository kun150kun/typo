Feature: Categorize Blogs
  As a blog administrator
  In order to organize the blogs 
  I want to be able to add catergories to my blogs
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully access category
    Given I am on the categories page
    Then I should see "Your category slug"
    
  Scenario: Add new category
    Given I am on the categories page
    When I fill in "Name" with "Software Engineer"
    And I fill in "Keywords" with "Bug Fix"
    And I fill in "Description" with "Category on Software"
    And I press "Save"
    Then I am on the categories page
    And I should see "Software"
    
  Scenario: Edit existed category
    Given I am on the categories page
    When I fill in "Name" with "Software Engineer"
    And I fill in "Keywords" with "Bug Fix"
    And I fill in "Description" with "Category on Software"
    And I press "Save"
    Then I am on the categories page
    When I go to the categories edit page for "Software Engineer"
    Then the "Name" field should contain "Software Engineer"
    And I fill in "Name" with "Development"
    And I press "Save"
    Then I am on the categories page
    And I should not see "Software Engineer"
    And I should see "Software"
    And I should see "Development"
    
    