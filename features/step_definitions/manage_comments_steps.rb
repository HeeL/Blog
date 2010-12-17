Given /^a post has been created$/ do
  Post.create(:title => "post title" , :body => "content string")
end

Then /^I also see the comments created_at time$/ do
  pending # express the regexp above with the code you wish you had
end

