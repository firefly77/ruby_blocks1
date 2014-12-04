module Enumerable
  
  def my_each
    return self unless block_given?
    for i in self
      yield(i)
    end
  end
    
  def my_each_with_index
    return self unless block_given?
    for i in 0...length
      yield(self[i], i)
    end
  end
  
  def my_select
    return self unless block_given?
    arr2 = []
    for i in 0...length 
       if (yield(self[i]) == true)
         arr2 << self[i]
       end
    end
    return arr2
  end
  
  def my_all?
    self.my_each { |x| 
      unless (x)
        return false
      end
      }
    return true
  end
  
  def my_any?
    self.my_each { |x|
      if (x)
        return true
      end
      }
    return false
  end
  
  def my_none?
    self.my_each { |x|
      if (x)
        return false
      end
      }
    return true
  end
  
  def my_count(a= (a_was_passed = false; nil))   #incorrect due to no wildcard
    i = 0
    if block_given?
      self.my_each { |x|
        if yield(x)
          i += 1
        end
        }
      return i
    else
      self.my_each { |x|
        if (x === a)
          i += 1
        end
        }
        return i
    end
  end
  
  def my_map 
    arr = []
    if block_given?
      self.my_each { |x|
        arr << yield(x)
        }
      return arr
    else
      return self
    end
  end
  
  def my_inject(a= (a_was_not_passed = true; self[0]))
    if block_given?
      unless a_was_not_passed
        self.each { |x|
          a = yield(a, x)
          }
        return a
      else
        for i in 1...length
          a = yield(a, self[i])
        end
        return a
      end  
    else
      
    end
  end
  

  
      

end

  def multiply_els(arr)
    arr.my_inject { |product, n| product * n}
  end


array = [6, 4, 1, 9]
array2 = [9, 0, 2, 4]
array3 = []
array4 = [nil, nil, nil]
array5 = [9, nil, 4]

puts multiply_els(array)

puts array.my_inject(5) { |sum, n| sum + n}
puts array.my_inject { |product, n| product * n}
array.my_map { |x| x**2}
puts array2.my_none?
puts array3.my_none?
puts array4.my_none?
puts array5.my_none?