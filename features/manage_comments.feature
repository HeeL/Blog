Feature: manage comments for posts


Scenario: add comment
  Given a post has been created
  And I am on the post page
  When I fill in "Email" with "email@exmaple.com"
  And I fill in "Name" with "Stephen Smithstone"
  And I fill in "Comment" with "This post rocks, you are a god among men"
  And I press "Submit"
  Then I should be on the posts page
  And I should see "This post rocks, you are a god among men"
  And I also see the comments created_at time

