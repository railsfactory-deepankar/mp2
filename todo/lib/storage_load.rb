class Load
def self.load
data = ""
f = File.open("todo.txt", "r")
data = f.read
f.close
return data.strip
end
end

