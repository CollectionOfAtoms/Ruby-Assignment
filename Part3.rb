def count_words(string)
    string.downcase!.gsub!(/\W/, " ")
    words = string.split
    frequencies = Hash.new(0)

    words.each do |word|
	frequencies[word] += 1
    end

    frequencies = frequencies.sort_by {|word, freq| freq}
    frequencies = Hash[frequencies.reverse]
    
    frequencies.each do |word, freq|
	puts "#{word} : #{freq}"
    end
    return frequencies
end

count_words("There are some words here.  Fo reals words ,,, ### these are not words")
