desc "Print today's date"
task :todays_date do
    Time.now.in_time_zone("America/Chicago")
    ap(Date.today)
end
