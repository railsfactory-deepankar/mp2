class Roman

  def self.convert(number)
a = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X"]
if number < 11 
a[number - 1]
else
number = number - 10
a[9] + a[number - 1]
end
end
end
