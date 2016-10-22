require_relative 'item'

class Receipt

  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

  def print_items
    
  end

  def print_tax

  end

  def print_total

  end

  def create_receipt
    print_items
    print_tax
    print_total
  end

end

item1 = Item.new('imported bottle of perfume', 27.99, true)
item2 = Item.new('bottle of perfume', 18.99)
item3 = Item.new('packet of headache pills', 9.75)
item4 = Item.new('box of imported chocolates', 11.25, true)
myarray = [item1, item2, item3, item4]
r1 = Receipt.new

myarray.each do | x |
  r1.add_item(x)
end

myarray.each do | x |
  puts x.item_details
end

# Example 3:
# 1 imported bottle of perfume at 27.99
# 1 bottle of perfume at 18.99
# 1 packet of headache pills at 9.75
# 1 box of imported chocolates at 11.25
#
#
# Output:
# 1 imported bottle of perfume: 32.19
# 1 bottle of perfume: 20.89
# 1 packet of headache pills: 9.75
# 1 imported box of chocolates: 11.85
# Sales Taxes: 6.70
# Total: 74.68
