pal = [ ]
array = (100...999)
array.each do |x|
  array.each do |y|
    mult = x * y
    if mult == mult.to_s.reverse.to_i
      pal << mult
    end
  end
end

p pal.max