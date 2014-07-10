class Marked
def self.mark(i)
m = []

m = open('todo.txt').map { |line| line.split('\n')[0] }
m[i].gsub!("#undone","#done").strip
f = File.open("todo.txt", "w")
f.write(m)
f.close
f1 = File.open("todo.txt", "r")
str = f1.read
f1.close
return str 
end
end
