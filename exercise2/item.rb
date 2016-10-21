class Item

  attr_reader :description, :price
  attr_accessor :imported, :tax_exempt

  def initialize(description, price, imported=false, tax_exempt=false)
    @description = description
    @price = price.round(2)
    @imported   = imported
    @tax_exempt = tax_exempt
  end

  def import_duty
    @imported == true ? (@price * 0.05).round(2) : 0
  end

  def item_tax
    @tax_exempt == true ? 0 : (@price * 0.10).round(2)
  end

  def item_price
    @price + import_duty + item_tax
  end

  def item_details
    "#{ @description } at #{ item_price }"
  end

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
