class CommentsController < ApplicationController
  
  def to_post
    redirect_to :controller => 'posts', :action => 'show', :id => params[:post_id]
  end
    
  def index
    to_post
  end
      
  def create
    @post = Post.find_by_id(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    
    if @comment.errors.empty?
      to_post
    else
      render :action => 'posts/show'
    end    
  end
  
  def destroy
    comment = Comment.find_by_id(params[:id])
    comment.destroy
    to_post
  end
  
end