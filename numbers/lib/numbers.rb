class Numbers

  def self.convert(number)
n = number.to_s
i = number / 10
if number <= 10
	n1 = 10 - number
	if n1 < 7
	n+"th"
	elsif n1 == 7
	n+"rd"
	elsif n1 == 8
	n+"nd"
	else
	n+"st"
	end
elsif number <= 20 and number > 10
	n+"th"
elsif number > 20
	n1 = (i+1)*10 - number
	if n1 < 7
	n+"th"
	elsif n1 == 7
	n+"rd"
	elsif n1 == 8
	n+"nd"
	else
	n+"st"
	end
end


end
end
