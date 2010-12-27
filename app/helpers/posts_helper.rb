module PostsHelper
  
  def check_own(post)
    return user_signed_in? && post.user.id == current_user.id
  end
  
end
