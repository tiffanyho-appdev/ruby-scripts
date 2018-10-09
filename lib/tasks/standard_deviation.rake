desc "Calculate standard deviation"
task :standard_deviation do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # VARIANCE
  # ========
  # To find the variance of a set,
  #  - we find the mean of the set
  #  - for each number in the set,
  #    - we find the difference between the number and the mean
  #    - we square the difference
  #  - the variance is the mean of the squared differences

  # STANDARD DEVIATION
  # ==================
  # To find the standard deviation of a set,
  #  - take the square root of the variance

  mean = numbers.sum / numbers.count
  sqdiff = []
  
  numbers.each do |num|
    diff = num - mean
    squared = diff * diff
    sqdiff.push(squared)
  end
  
  variance = sqdiff.sum / sqdiff.count
  stdev = variance**0.5

  ap("Your numbers:")
  ap(numbers)
  ap("Standard Deviation: " + stdev.to_s)

end
