ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "linaqu.info",
  :user_name            => "cssa.loyola@gmail.com",
  :password             => "LoyolaCssa2012@@",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
