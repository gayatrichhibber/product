set :environment, "development"
set :output, {:error => "log/cron_error_log.log", :standard => "log/cron_log.log"}

every 2.hours do
  rake "thinking_sphinx:index"
end

every :reboot do
  rake "thinking_sphinx:start"
end

every :friday, :at => "4:38am" do
  command "rm -rf #home/tmp/cache"
  runner "Cart.remove_abandoned"
end

every :year, :at => "2014-07-25 17:39:48 -0700" do
  rake 'timeperiod:create_timeperiod'
end

every '0 0 27-31 * *' do
  command "echo 'you can use raw cron syntax too'"
end

every :day, :at => '12:20pm', :note => [:app] do
  rake "app_server:task"
end


every 5.minutes do
  rake 'testing:my_command'
end
