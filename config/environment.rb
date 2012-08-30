# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Summarize::Application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :user_name => "app7144075@heroku.com",
  :password => 'mykmtlkq',
  :domain => "summarize.herokuapp.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}