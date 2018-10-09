desc "Check if today is Friday"
task :tgif do
  Time.now.in_time_zone("America/Chicago")
  if Time.now.wday == 5
    ap("Yay, it's Friday!")
  else
    ap("Nope, not yet :/")
  end
end
