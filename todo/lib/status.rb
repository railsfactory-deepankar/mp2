class Status
def self.pend
data = []
f = File.open("todo.txt") do |f|
f.each_line do |line|
if line.match(/#undone/)
data << line
end
end
end
return data.join(" ").gsub(/\s+/," ").strip


end
end



