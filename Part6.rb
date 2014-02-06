def glob_match(filenames, pattern)

    matches = []

    # Replaces all "*" with ".*" all "." with "\.", and all "?" with "."
    pattern.gsub!(/[\*\?\.]/, '*' => '.*', '.' => '\.', '?' => '.')
    filenames.each do |m|
	if File.fnmatch(pattern, m)
	    matches.push(m)
	end
    end
end

p glob_match(['part1.rb', 'part2.rb', 'part2.rb~', '.part3.rb.un~'], '*part*rb?*')


