class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
	def self.marklar(str)
		# TODO: Implement this method
		toReturn=""
		words = str.split(" ")
		for i in words
			if i.length > 4 then
				partitions = i.split(/\b/) 
				partitions[1]=""
				if /[[:upper:]]/.match(i) then
					str[partitions[0]]= "Marklar"+partitions[1]
				else
					str[partitions[0]]= "marklar"+partitions[1]
				end
			end
		end
	  return str
	end


  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
	def self.even_fibonacci(nth)
	  array=Array.new
	  toReturn = 0;
		array[0]=1
		array[1]=1
	  for i in (0..nth-3)
		array[i+2]=array[i]+array[i+1]
		if array[i+2] % 2 == 0
		  toReturn+=array[i+2]
		end
	  end
	  return toReturn
	end

end
