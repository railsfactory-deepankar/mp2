class Loading
def load1
todo = []
completed = []
pending = []
f = File.open("data.txt", "r")
f.each_line { |line| todo << line }
completed = todo.select {|c| c.match("#done")}
pending = todo - completed

puts "----------"
puts todo
puts "---------------"
puts completed
puts "---------------------"
puts pending

end
end
l = Loading.new()
l.load1
