class Roman

  def self.convert(number)
	c1 = 0
	c2 = 0
	c3 = 0
	c4 = 0
	c5 = 0
	c6 = 0
	c7 = 0
	c8 = 0
	c9 = 0
	number1 = number
	while number1 >= 1000
		c1 = number1 / 1000
		number1 = number1 % 1000
	end
	while number1 >= 500
		c2 = number1 /  500
		number1 = number1 % 500
	end
	while number1 >= 100
		c3 = number1 / 100
		number1 = number1 % 100
	end
	while number1 >= 50
		c4 = number1 / 50 
		number1 = number1 % 50
	end
	while number1 >= 10
		c5 = number1 / 10
		number1 = number1 % 10
	end
	while number1 == 9
		c8 = number1 / 9
		number1 = number1 % 9
	end
	while number1 >= 5
		c6 = number1 / 5
		number1 = number1 % 5
	end
	while number1 == 4
		c9 = number1 / 4
		number1 = number1 % 4
	end
	while number1 >= 1
		c7 = number1 / 1
		number1 = number1 % 1
	end
	if number >= 1000
		"M"*c1 + "D"*c2 + "C"*c3 + "L"*c4 +"X"*c5 + "IX"*c8 + "V"*c6 + "IV"*c9 + "I"*c7
	elsif number >= 500 and number < 1000
		 "D"*c2 + "C"*c3 + "L"*c4 +"X"*c5 + "IX"*c8 + "V"*c6 + "IV"*c9 + "I"*c7
	elsif number >= 100 and number < 500
		"C"*c3 + "L"*c4 +"X"*c5 + "IX"*c8 + "V"*c6 + "IV"*c9 + "I"*c7
	elsif number >= 50 and number < 100
		"L"*c4 +"X"*c5 + "IX"*c8 + "V"*c6 + "IV"*c9 + "I"*c7
	elsif number >= 10 and number < 50
		"X"*c5 + "IX"*c8 + "V"*c6 + "IV"*c9 + "I"*c7
	elsif number >= 5 and number < 10
		"IX"*c8 + "V"*c6 + "IV"*c9 + "I"*c7
	elsif number == 4
		"IV"*c9
	else
		"I"*c7
	end
  end
end



