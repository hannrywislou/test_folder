# Есть хеш:
# {a: 1, b:2, c:1, d:3, k:2,n:4}
# Необходимо оставить в хеше лишь уникальные значения по value

array = {a: 1, b: 2, c: 1, d: 3, k: 2, n: 4}.to_a.flatten

array = array.uniq.transpose

# odd = array.reject { |x| x % 2 == 0 }

p array



	