class UserMailer < ActionMailer::Base
  default from: "d6cdad1d4cdcbd9f7358@cloudmailin.net"
  
  def summary
    mail(:to => "david@quickleft.com", :subject => "Test email")
  end
end
