class EmailsController < ApplicationController
  include EmailsHelper

  def new
    @emails = Email.new
  end

  def create
    name = params[:email][:name]
    email = params[:email][:email]
    subject = params[:email][:subject]
    body = params[:email][:body]
    EmailsHelper.send_email(name, email, subject, body)
  end

private
  def emails_params
    params.require(:emails).permit(:name, :email, :subject, :body)
  end
end
