# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings ={
    
        user_name: ENV["mailgun_username"],
        password:  ENV["mailgun_password"],
        domain: 'sandboxea315a795fc34f35b0479ec3e536c2e0.mailgun.org',
        address:  'smtp.mailgun.org',
        port: 587,
        authentication: :plain,
        enable_starttls_auto: true
}
