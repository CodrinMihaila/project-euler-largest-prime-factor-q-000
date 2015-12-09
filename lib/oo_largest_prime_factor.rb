class LargestPrimeFactor
  def initialize (input)
    @input = input
  end
  def input=(input)
    @input = input
  end
  def input
    @input
  end
  def number
  number = 2
  max = 0
  new_input = @input.to_i
  while number <= Math.sqrt(@input).to_i
    if new_input % number == 0
         divider = 1
         counter = 0
         while divider <= number
            if number % divider == 0
            counter += 1
            end
            divider += 1
         end
         if  counter == 2
           new_input /= number  
           if number > max
            max = number
           end
         end
    end
    number += 1
  end
  return max
end  
end