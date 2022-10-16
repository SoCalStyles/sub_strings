dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(string, dictionary_array)
  answer_array = []
  answer_hash = {}

  # compare each word in string to each word in dictionary
  string_array = string.downcase.split(" ").each do |word_in_string|
    dictionary_array.each do |word|
      word_in_string.include?(word) ? answer_array.push(word) : next
    end
  end 

  # turn answer array into hash
  answer_array.reduce(Hash.new(0)) do |a, b|
    a[b] += 1
    a
  end
end

put sub_strings("Howdy partner, sit down! How's it going?", dictionary)