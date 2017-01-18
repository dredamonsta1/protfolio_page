class ContactsController < ApplicationController

  def new
    render 'contact'

  end
  def message
    firstname = params[:contact][:firstname]
    lastname = params[:contact][:lastname]
    email = params[:contact][:email]
    subject = params[:contact][:subject]
    message = params[:contact][:message]
    UserMailer.send_contact(firstname,lastname,email,subject,message).deliver_now
    render 'contact'
  end


end
