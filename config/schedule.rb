# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
every 20.minutes do
  rake "tweets:collect"
end

every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"

  rake "sentiment:crunch"

 end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
