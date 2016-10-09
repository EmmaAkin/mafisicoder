#Program to convert roman numerials to numbers in Base Ten
puts "Enter the Roman Numerial you would want to convert"
str = gets.chomp.upcase

#Prep the input that has being gotten from the User
str_ar = str.split("")

romanNum_arr = Hash.new(0)

romanNum_arr = {I:1, V:5,X:10,L:50,C:100,D:500,M:1000}
puts romanNum_arr

#The value that convert the number to base ten
sum =0

i = str_ar.length-1
while i >= 0 do


        if i >0 && romanNum_arr[str_ar[i].to_sym]  >  romanNum_arr[str_ar[i-1].to_sym]  then


               sum = sum + romanNum_arr[str_ar[i].to_sym] - romanNum_arr[str_ar[i-1].to_sym]
                    i -=2
                    next

        else

          sum = sum+ romanNum_arr[str_ar[i].to_sym]

        end

        i = i-1
    end

p " Number converted is : #{sum}"