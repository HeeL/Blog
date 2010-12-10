atom_feed do |feed|
  feed.title "Rails3 Blog"
  feed.updated @posts.first.updated_at

  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.title post.title
      entry.content post.body
    end
  end

end