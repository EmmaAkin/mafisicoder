def baglock()

   (100..931).each do |x|
        a = x/100
        b = (x%100)/10
        c = x%10
       if b%2==0 and (a!=b and b!=c and a!=c) and ((a+b+c)==12)
            puts x
      end
    end
end

puts baglock()