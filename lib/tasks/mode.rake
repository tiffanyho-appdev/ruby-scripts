desc "Calculate mode"
task :mode do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MODE
  # ====

  # To find the mode of a set of numbers, I follow an approach similar to the one for minimum and maximum above.
  
  maxcount = 0
  mode = 0
  sorted = numbers.sort
  
  sorted.each do |num|
    if sorted.count(num) > maxcount
      maxcount = numbers.count(num)
      mode = num
    end
  end
  
  ap("Your numbers:")
  ap(sorted)
  ap("Mode: " + mode.to_s)  

end
