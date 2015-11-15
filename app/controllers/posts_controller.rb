class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    # Censor the first and every fifth post
    if Post.last.id == 1 || Post.last.id%5 == 0
      Post.last.title = "SPAM"
    end
  end

  def edit
  end
end
