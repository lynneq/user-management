class UserEvent < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :user_id
  
  def notify_rsvp_users(date)  
    user_events = UserEvent.all  
    user_events.each do |user_event|
      EventMailer.event_reminder(user_event)
    end  
  end
end
