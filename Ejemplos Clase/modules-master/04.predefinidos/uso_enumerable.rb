#module Enumerable
#By default is included in Array class

r = [1,2,3,4,5,6].each{ |i| puts i}

puts r

r = [1,2,3,4,5,6].collect{ |i| i.to_s + "x"}

puts r

r = [1,2,3,4,5,6].detect{ |i| i.between?(2,3)}

puts r

r = [1,2,3,4,5,6].select{ |i| i.between?(3,5)}

puts r

r = [2,1,6,5,4,3].sort

puts r

r = [2,1,6,5,4,3].max

puts r

r = [2,1,6,5,4,3].min

puts r