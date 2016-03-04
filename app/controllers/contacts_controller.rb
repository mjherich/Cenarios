class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    
    if @contact.save
      name = params[:contact][:name]
      email = params[:contact][:email]
      body = params[:contact][:comment]
      
      ContactMailer.contact_email(name, email, body).deliver
      flash[:success] = "Message sent successfully"
      redirect_to contact_path
    else
      flash[:error] = "Error occured, message has not been sent"
      redirect_to contact_path
    end
  end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :comment)
    end
end