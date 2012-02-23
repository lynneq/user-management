# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Using: whenever gem
# wheneverize. # create config/schedule.rb
# whenever -w
# whenever --update-crontab


require 'rubygems'
every 1.day, :at => '4:07 pm' do 
  puts '--working--'
  rake "user_events:notify_email RAILS_ENV=development" # Default won't send the email cause it's in production mode.
  puts '--done--'
end