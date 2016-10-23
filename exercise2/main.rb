require_relative 'receipt'

# Create items
item1 = Item.new('imported bottle of perfume', 27.99, true)
item2 = Item.new('bottle of perfume', 18.99)
item3 = Item.new('packet of headache pills', 9.75, false, true)
item4 = Item.new('box of imported chocolates', 11.25, true, true)

r1 = Receipt.new
r1.add_item(1, item1)
r1.add_item(1, item2)
r1.add_item(1, item3)
r1.add_item(1, item4)

r1.print_receipt


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
#
# Current Output:
# 1 imported bottle of perfume at 32.19 <= GOOD
# 5 bottle of perfume at 20.89 <= GOOD
# 6 packet of headache pills at 10.73 <= WRONG
# 1 box of imported chocolates at 12.94 <= WRONG
