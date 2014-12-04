dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, dict)
  string.downcase!
  string = string.split(" ")
  wordcount = Hash.new(0)
  string.each {|sword|
  dict.each {|word|
    if (sword =~ /#{word}/)
      wordcount[word] += 1
    end
  }
  }
  puts wordcount
end

substrings("Howdy partner, sit down! How's it going?", dictionary)