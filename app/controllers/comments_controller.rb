class CommentsController < ApplicationController
    
  def create
    @post = Post.find_by_id(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    
    if @comment.errors.empty?
      redirect_to :controller => 'posts', :action => 'show', :id => params[:post_id]
    else
      render :action => 'posts/show'
    end    
  end
  
  def destroy
    comment = Comment.find_by_id(params[:id])
    comment.destroy
    redirect_to :controller => 'posts', :action => 'show', :id => params[:post_id]
  end
  
end