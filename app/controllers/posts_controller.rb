class PostsController < ApplicationController

  respond_to :html, :atom
  before_filter :signed_in, :only => [:create, :new]
  before_filter :check_own, :only => [:update, :edit, :destroy]  
  before_filter :add_params, :only => [:update, :create]  
  
def find_post
  @post = Post.find_by_id(params[:id])
end

def signed_in
  if !user_signed_in?
    redirect_to posts_path
    return    
  end
end

def check_own
  find_post
  if @post.user.id != current_user.id
    redirect_to posts_path
    return    
  end
end

def add_params
  params[:post][:user_id] = current_user.id;
end

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
  @comment = Comment.new
  
  respond_with @post
end

def update
  @post.update_attributes(params[:post])
  
  if @post.save
    redirect_to posts_path
  else
    render :action => 'edit'
  end
end

def edit
end

def destroy
  @post.destroy
  redirect_to posts_path, :notice => "#{@post.title} was deleted"
end


end
