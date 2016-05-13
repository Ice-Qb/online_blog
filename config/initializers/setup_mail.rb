ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :user_name => ENV['MAIL_LOGIN'],
  :password => ENV['MAIL_PASSWORD'],
  :domain => 'heroku.com',
  :address => 'smtp-relay.sendinblue.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

