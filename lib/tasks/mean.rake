desc "Calculate mean"
task :mean do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MEAN
  # ====

  # To find the mean (or average) of a set,
  #  - we sum up all the elements
  #  - then we divide the sum by the number of elements in the set

  sum = 0
  
  numbers.each do |num|
    sum = sum + num
  end
  
  mean = sum / numbers.count
  
  ap("Your numbers:")
  ap(numbers)
  ap("Mean: " + mean.to_s) 

end
