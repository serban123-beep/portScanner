require 'socket'

hostname = ARGV[0]

i = ARGV[1].to_i

loop do

socket = TCPSocket.new(hostname,i)
status = "open"
rescue Errno::ECONNREFUSED, Errno::ETIMEDOUT
status = "closed"
puts "Port #{i} is #{status}"
i+=1
if i == ARGV[2].to_i
break
end
end





