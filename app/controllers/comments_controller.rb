class CommentsController < ApplicationController
  
  def create
    post = Post.find_by_id(params[:post_id])
    if post.comments.create(params[:comment])
      redirect_to post
    else
      render :action => 'show'
    end    
  end
  
  def destroy
    comment = Comment.find_by_id(params[:id])
    comment.destroy
    redirect_to :controller => 'posts', :action => 'show', :id => params[:post_id]
  end
  
end