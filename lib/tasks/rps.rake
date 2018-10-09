desc "Play rock in rock-paper-scissors"
task :play_rock do
  
  choices = [
  "rock",
  "paper",
  "scissors"
  ]
  
  choice = choices.sample
  comp_choice = "The computer chose " + choice + "."
  
  if choice == "rock" 
    result = "We tied!"
  elsif choice == "paper"
    result = "We lost!"
  else
    result = "We won!"
  end
  
  ap("We played rock.")
  ap(comp_choice)
  ap(result)
end

desc "Play paper in rock-paper-scissors"
task :play_paper do
  
    choices = [
    "rock",
    "paper",
    "scissors"
    ]
  
  choice = choices.sample
  comp_choice = "The computer chose " + choice + "."
  
  if choice == "paper" 
    result = "We tied!"
  elsif choice == "scissors"
    result = "We lost!"
  else
    result = "We won!"
  end
  
  ap("We played paper.")
  ap(comp_choice)
  ap(result)
end

desc "Play scissors in rock-paper-scissors"
task :play_scissors do

    choices = [
    "rock",
    "paper",
    "scissors"
    ]
  
  choice = choices.sample
  comp_choice = "The computer chose " + choice + "."
  
  if choice == "scissors" 
    result = "We tied!"
  elsif choice == "rock"
    result = "We lost!"
  else
    result = "We won!"
  end
  
  ap("We played scissors.")
  ap(comp_choice)
  ap(result)
end
