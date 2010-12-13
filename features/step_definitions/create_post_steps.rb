When /^I create a blog post titled "([^\"]*)" with the body "([^\"]*)"$/ do |title, body|

    fill_in "post_title", :with  => "Awesome Knowledge #1"
    fill_in "post_body", :with => "This blog post is showing awesome power of rails / cucumber / git(hub)"
end
