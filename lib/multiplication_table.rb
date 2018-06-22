# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

class MultiplicationTable
  
    def is_prime? n
     for d in 2..(n - 1)
      if (n % d) == 0
       return false
      end
     end
     true
    end

        def get_primes(num)
      primes_array = []
      counter = 2

      until primes_array.size == num
        if is_prime?(counter)
          primes_array << counter
        end
        counter += 1
      end
      primes_array
    end
    
    def print_table
      is_successful = false;
      puts "Please Enter Array Size"
        num = gets.to_i
        
      rows = get_primes(num) #array
     columns = rows

     print "     "
     columns.each {|column_num| print " %-3d " % column_num}
     print "\n\n"

     rows.each do |row_num|
       print "%-3d| " % row_num
       columns.each {|column_num| print " %-3d " % (column_num * row_num)}
       print "\n\n"
     end
     #check if successful (used for testing purpose)
     is_successful = true
     return is_successful

   end
  
end
mt = MultiplicationTable.new
mt.print_table
