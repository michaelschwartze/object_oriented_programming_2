require_relative 'receipt'

# Create items
item1 = Item.new('imported bottle of perfume', 27.99, true)
item2 = Item.new('bottle of perfume', 18.99)
item3 = Item.new('packet of headache pills', 9.75, false, true)
item4 = Item.new('box of imported chocolates', 11.25, true, true)

myarray = [item1, item2, item3, item4]

puts "Checkout with items in cart? (Y/N):"

answer = gets.chomp.upcase

if answer == "Y"
  r1 = Receipt.new
  myarray.each do | item |
    r1.add_item(1, item)
  end
  r1.print_receipt
end
