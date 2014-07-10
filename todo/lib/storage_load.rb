class Load
def self.load
fname = "todo.txt"
data = ""
f = File.open(fname, "r")
data = f.read
f.close
return data.strip
end
end

