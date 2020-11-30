class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @posts = Post.order(created_at: :desc).limit(3)
    @contact = Contact.new
  end
end
