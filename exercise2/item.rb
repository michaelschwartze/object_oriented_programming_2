# Item Class
class Item
  attr_reader :description
  attr_reader :price
  attr_reader :imported
  attr_reader :tax_exempt
  attr_reader :import_tax
  attr_reader :sales_tax
  attr_reader :total_tax
  attr_reader :total_price

  def initialize(description, price, imported = false, tax_exempt = false)
    @description = description
    @price = price
    @imported   = imported
    @tax_exempt = tax_exempt
    #Calculated instance varaiables
    @import_tax = import_tax
    @sales_tax = sales_tax
    @total_tax = total_tax
    @total_price = total_price
  end

  def import_tax
    @imported == true ? (@price * 0.05) : 0
  end

  def sales_tax
    @tax_exempt == true ? 0 : (@price * 0.10)
  end

  def total_tax
    @import_tax + @sales_tax
  end

  def total_price
    @price + @total_tax
  end

  def item_details
    "#{@description} at #{item_price}"
  end
end

# Books, food and medical products are tax exempt
