class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new create]
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        format.html { redirect_to 'pages/home' }
        format.js { flash[:alert] = "Gracias por tu mensaje nos contactaremos pronto" }
      else
        format.html { render 'index' }
        format.js
      end
    end
  end
end
