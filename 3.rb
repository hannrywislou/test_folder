ar = (1..20).to_a

find_New_Ar = ar.inject(1){ |x, y| x * y }

require 'prime'
Prime.prime_division(find_New_Ar)
p Prime.int_from_prime_division([1..20])