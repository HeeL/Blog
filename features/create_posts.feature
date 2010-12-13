Feature: Create Posts
  In order to show the world my awesome knowledge
  As a blog owner 
  I want create new posts


  Scenario: single post
    Given I am on the new post page
    When I create a blog post titled "Awesome Knowledge #1" with the body "This blog post is showing awesome power of rails / cucumber / git(hub)"
    And I press "Create Post"
    Then I should see "Awesome Knowledge #1"

