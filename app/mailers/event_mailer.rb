class EventMailer < ActionMailer::Base
  default from: "lqu@thoughtworks.com"
  
  def event_reminder(user_event)
    @user_event = user_event
    @url = "linaqu.info"
    mail(:to => @user_event.user.email, 
    :subject => "[Reminder] Event is coming!")
  end
end
