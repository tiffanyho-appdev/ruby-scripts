desc "Calculate range"
task :range do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # RANGE
  # =====

  # To find the range of a set of numbers,
  #  - Find the maximum
  #  - Find the minimum
  #  - Subtract the latter from the former
  
  max = numbers.at(0)
  
  numbers.each do |num|
    if num > max
      max = num
    end
  end
  
  min = numbers.at(0)
  
  numbers.each do |num|
    if num < min
      min = num
    end
  end
  
  range = max - min
  
  ap("Your numbers:")
  ap(numbers)
  ap("Range: " + range.to_s)  
  
end
