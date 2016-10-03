#Program to convert roman numerials to numbers in Base Ten
puts "Enter the Numbers to convert to Words"
num = gets.chomp.to_i

#Prep the input that has being gotten from the User
#str_ar = str.split("")

#The value that convert the number to base ten

def find_hundreds (n)
    words =""
    num_words = Hash.new(0)
    num_words = {1=>"One",2=>"Two",3=>"Three",4=>"Four",5=>"Five",6=>"Six",7=>"Seven",8=>"Eight",9=>"Nine",10=>"Ten",11=>"Eleven",12=>"Twelve",13=>"Thirteen",14=>"Fourteen",15=>"Fifteen",16=>"Sixteen",17=>"Seventeen",18=>"Eighteen",19=>"Nineteen",20=>"Twenty",30=>"Thirty",40=>"Fourty",50=>"Fifty",60=>"Sixty",70=>"Seventy",80=>"Eighty",90=>"Ninety"}

    if n/100 > 0
        # Append the String you get to the string that holds the words
        words = num_words[n/100] +" Hundred "
        if n%10 !=0
            words= words + "and "
        end
        n=n%100
    end

    if n/10 > 0
        if n/10 == 1
            words = words+num_words[n]+ " "
        elsif n%10 == 0
            words = words +num_words[n]
        else
            words = words  +num_words[n/10*10] +" "+ num_words[n%10]
        end
    elsif n == 0
        words
    else
        words =  words +num_words[n]
    end
    words
end

def fiw(n)
    words = ""
    if n==0
        return "Zero"
    end
   if n/(10**9) > 0
        words = find_hundreds(n/(10**9))+" Billion "
        if n/(10**8) ==0
            words = words + "and "
        end
        n=n%(10**9)
    end
    if n/(10**6)> 0
        words = words +find_hundreds(n/(10**6))+" Million "
        if n/(10**5) ==0
            words = words + "and "
        end
        n=n%(10**6)
    end
    if n/(10**3)> 0
        words = words + find_hundreds(n/(10**3)) + " Thousand "
        if n%(10**2) !=0
            words = words + "and "
        end
        n=n%(10**3)
    end
    if n/(10**2)>0
        words = words + find_hundreds(n)
    else
        words = words  + find_hundreds(n)
    end
end

if num<0
    num = num*-1
    puts words = "Negative "+ fiw(num)
else
    puts fiw(num)
end


