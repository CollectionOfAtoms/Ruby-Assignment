def palindrome?(string)
       string.downcase!
       string.gsub!(/\W/,"")
       if string == string.reverse
		return true
       else
		return false
       end
end

p palindrome?("Go Hang a Salami, I'm a lasagna Hog")
