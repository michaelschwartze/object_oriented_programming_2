class Item
  attr_reader :description, :price
  attr_accessor :imported, :tax_exempt

  def initialize(description, price, imported = false, tax_exempt = false)
    @description = description
    @price = price
    @imported   = imported
    @tax_exempt = tax_exempt
    @import_duty = import_duty
    @item_tax = item_tax
  end

  def import_duty
    @imported == true ? (@price * 0.05) : 0
  end

  def item_tax
    @tax_exempt == true ? 0 : (@price * 0.10)
  end

  def item_price
    item_total = @price + import_duty + item_tax
    item_total.round(2)
  end

  def item_details
    "#{@description} at #{item_price}"
  end
end
