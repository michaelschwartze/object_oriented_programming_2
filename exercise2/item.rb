# Item Class
class Item
  attr_reader :description
  attr_reader :price
  attr_reader :total_tax
  attr_reader :total_price
  attr_reader :tax_round

  def initialize(description, price, imported = false, tax_exempt = false)
    @description = description
    @price = price
    @imported   = imported
    @tax_exempt = tax_exempt
    @import_tax = import_tax
    @sales_tax = sales_tax
    @total_tax = @import_tax + @sales_tax
    @total_price = @price + @total_tax
  end

  def import_tax
    if @imported == true
      return @price * 0.05
    else
      return 0
    end
  end

  def sales_tax
    if @tax_exempt == true
      return 0
    else
      return @price * 0.10
    end
  end

  def rounder(num)
    if (num * 100).to_i % 5 > 0
      puts ((num * 100).to_i - ((num * 100).to_i % 5) + 5).to_f / 100
    else
      puts num
    end
  end

  def item_details
    "#{@description} at #{@total_price}"
  end
end
