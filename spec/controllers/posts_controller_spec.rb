require 'spec_helper'

describe PostsController do

  describe "#create" do

    before(:each) do
      @post = mock_model(Post).as_null_object
      Post.stub(:new) { @post }
    end

    it "creates a new post" do
      Post.should_receive(:new)
      post :create , {}
    end

    context "a valid save" do

      it "redirects to posts" do
        @post.stub(:save) { true }
        post :create , {}
        response.should redirect_to posts_path
      end

    end

    context "an invalid save" do

      it "renders new to allow for corrections" do
        @post.stub(:save) { false }
        post :create , {}
        response.should render_template "new"
      end

    end

  end

end
