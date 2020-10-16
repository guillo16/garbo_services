class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @posts = Post.order(created_at: :asc).limit(3)
  end
end
