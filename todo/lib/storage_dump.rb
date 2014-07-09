
class Storage

def self.dump(str)
f1 = File.open("todo.txt", "a+")
f1.puts(str)
f1.close
f2 = File.open("todo.txt", "r")
data1 = f2.read
f2.close
return data1
end
end




