m = 0
(0..31).each do |n|
	if n==0 || n==1 || n==5 || n==6
		m
	else
		m = m + 2**n 
	end
end
puts m
