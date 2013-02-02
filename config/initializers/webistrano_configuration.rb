require "#{Rails.root}/config/webistrano_config"

WEBISTRANO_VERSION = '1.6'

ActionMailer::Base.delivery_method = WebistranoConfig[:smtp_delivery_method]
ActionMailer::Base.smtp_settings = WebistranoConfig[:smtp_settings]

#ActiveSupport::Notification.webistrano_sender_address = WebistranoConfig[:webistrano_sender_address]

Webistrano::Application.config.middleware.use ExceptionNotifier,
#  :email_prefix => "[Whatever] ",
  :sender_address => WebistranoConfig[:exception_sender_address],
  :exception_recipients => WebistranoConfig[:exception_recipients]
