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

# Learn more: http://github.com/javan/whenever


require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
# set :path, Rails.root
# set :output, Rails.root.join('log', 'cron.log')
set :environment, "development"
set :output, 'log/cron.log'

every :tuesday, :at => '12:56 am' do
  runner "User.send_weekly_news"
end

every :monday, :at => '8:05 pm' do
  runner "User.send_weekly_news"
end
