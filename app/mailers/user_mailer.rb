class UserMailer < ApplicationMailer
    helper :application 
    include Devise::Controllers::UrlHelpers
    default template_path: 'users/mailer'
    default from: 'no-reply@ucttaichi.com'

    def welcome(resource)
        @user = resource 
        mail(to: @user.email, subject: 'Welcome to UCT Tai Chi')
    end

    def new_registration(record,  opts={})
      super
    end

    def confirmation_instructions(record, token, opts={})
        headers["Custom-header"] = "Bar"
        opts[:from]              = "no-reply@ucttaichi.com"
        super
    end

    def reset_password_instructions(record, token, opts={})
        super
    end

    def unlock_instructions(record, token, opts={})
        headers["Custom-header"] = "Bar"
        opts[:from]              = "no-reply@ucttaichi.com"
        super
    end
end
