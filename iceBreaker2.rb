puts "Enter your first number"
pos = gets.chomp

puts "There is so"
neg = gets.chomp

def AddSub(neg, pos)
       add= pos.to_i+ neg.to_i
       sub = pos.to_i - neg.to_i
       puts (" This is the addition of the two number #{add} , and the subtraction #{sub}")
end

AddSub(neg,pos)