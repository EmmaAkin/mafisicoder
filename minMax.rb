start = Time.now()
def minMax(arr)
    i = 0
    min = 0
    max = 0

    while i < arr.length


       if max== 0 or arr[i] > max
            max = arr[i]
       end


      if min==0 or arr[i] < min
           min = arr[i]
        end

        i +=1
    end
    return max, min
end


puts minMax([2,2,2,5,6,7,1])
