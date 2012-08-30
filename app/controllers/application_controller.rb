class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def test_mailer
    UserMailer.summary.deliver
  end
  
  def incoming
    from = params[:from]
    subject = params[:subject]
    
    UserMailer.summary.deliver
    
    head 200
  end
end
