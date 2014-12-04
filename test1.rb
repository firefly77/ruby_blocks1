def ceasar_cipher(string, num)
  array2 = string.split(%r{\.*})
  array3 = []
  array2.each {|i|
  j = i.ord
  if (j < 123 && j > 96 || j < 91 && j > 64)
      j += (num % 26)
    unless (j < 123 && j > 96 || j < 91 && j > 64)
      j -= 26
    end
  end
    array3 << j.chr
  }
  solution = array3.join()
  puts solution
end
  


ceasar_cipher("What a string!", 5)

