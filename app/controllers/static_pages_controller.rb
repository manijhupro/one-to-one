class StaticPagesController < PostsController
before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  def home
    @posts = Post.all
  end

    end
