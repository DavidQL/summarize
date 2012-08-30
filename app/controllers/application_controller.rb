class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def test_mailer
    UserMailer.summary.deliver
  end
end
