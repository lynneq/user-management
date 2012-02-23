class UserEvent < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :user_id
  
  def self.notify_rsvp_users(date)  
    user_events = UserEvent.all  
    user_events.each do |user_event|
      gap = user_event.event_date - date 
      puts gap
      if gap <= 4.days and gap >= 0.days
        puts 'Event is still coming!'
        EventMailer.event_reminder(user_event).deliver
      end
    end  
  end

end
