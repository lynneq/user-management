#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

UserApp::Application.load_tasks

namespace :user_events do
  desc "Email whom RSVP the event!"
  task :notify_email => :environment do
    date = ENV['from'] ? Date.parse(ENV['from']) : Date.today
    # puts date.to_datetime
    # user_events = UserEvent.find(:all)
    # user_events.each do |user_event|
    #   EventMailer.event_reminder(user_event).deliver
    #   puts user_event.event_date
    #   puts 'sent'
    # end
    UserEvent.notify_rsvp_users(date.to_datetime)
  end
end
