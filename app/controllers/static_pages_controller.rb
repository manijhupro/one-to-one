class StaticPagesController   < ApplicationController
before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  def home
    @posts = Post.all
    @contact =Contact.new
  end

    end
