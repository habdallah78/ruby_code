class Inventory
  def initialize
    for i in 0..3 do
      Product.new("#{i}Name", "#{i}description", i.to_f, )
    end



end
