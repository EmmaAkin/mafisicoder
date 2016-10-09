puts "Please Enter a letter you wanted to find the number: "
words = gets.chomp

letters =  words.split("")

i = letters.length-1
result = 1

def Palindrome(a)

# Go through all the element in the array
for letter in letters


       if letters[i] != letter then
            result = 0
            break
        end
        # I used this to help me break once I am in the middle of things rather that <continue></continue>
        if i == letters.length/2 then
                    break
        end

        i -=1
end

# I tried to use the result directly without validating it using the idea that
# reseult = 0 should represent false but I was wrong/
if result==1 then
    puts "The word #{words} is a palindrome"
else
    puts "Not a palindrome"
end
end