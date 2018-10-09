desc "Calculate word count statistics"
task :word_count do
  path_to_text = Rails.root + "lib/input_files/word_count_text.txt"
  text = open(path_to_text).read

  path_to_special_word = Rails.root + "lib/input_files/word_count_special_word.txt"
  special_word = open(path_to_special_word).read

  # =====================================================================
  # Your code goes below.
  # The text from the file is in the variable 'text'.
  # The special word from the file is in the variable 'special_word'.
  # =====================================================================

  special_word_clean = special_word.gsub(/\s+/, "")  
  char_w = "Character count (with spaces): " + text.gsub(/[^a-z0-9\s]/i, "").length.to_s
  char_wo = "Character count (without spaces): " + text.gsub(/\s+/, "").length.to_s
  special = "Occurrences of '" + special_word_clean + "': " + text.scan(special_word_clean).length.to_s
  
  ap(text)
  ap(char_w)
  ap(char_wo)
  ap(special)
  
end
