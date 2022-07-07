=begin
These approch:
1. Read from the csv
1. .where .pluck 
2. store it in the array and use the split method
3. then use hash to store the place
4.  
esult = words.each_with_object(Hash.new(0)) { |word,places| places[word] += 1 }

=end
  require 'csv'
  
  place = Hash.new
  
  CSV.foreach(("cars.csv"), headers: true, col_sep: ";") do |row|
    if place[row[2]]==nil
        place[row[2]]=0
    else
      place[row[2]]+=1
    end
    
end 

place.delete("INT")
puts place


