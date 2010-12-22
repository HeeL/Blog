class PostsController < ApplicationController

  respond_to :html, :atom

def index
    @posts = Post.order('created_at desc')
    respond_with @posts
end

def new
    @post = Post.new
end

def create
  @post = Post.new(params[:post])
  if @post.save
    redirect_to posts_path
  else
    render :action => "new"
  end
end

def show
  @post = Post.find_by_id(params[:id])
  @comment = Comment.new
  
  respond_with @post
end

def update
  @post = Post.find_by_id(params[:id])
  @post.update_attributes(params[:post])
  
  if @post.save
    redirect_to posts_path
  else
    render :action => 'edit'
  end
end

def edit
    @post = Post.find_by_id(params[:id])
end

def destroy
  post = Post.find_by_id(params[:id])
  post.destroy
  redirect_to posts_path, :notice => "#{post.title} was deleted"
end


end
