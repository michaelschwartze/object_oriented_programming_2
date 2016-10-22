require_relative 'item'

# Receipt class
class Receipt
  attr_reader :items

  def initialize(qty, item)
    @items = []
    add_item(qty, item)
  end

  def add_item(qty, item)
    @items.push([qty,
      item.description,
      item.price,
      item.item_price,
      item.item_tax
      ])
  end

  def print_items #WORKS
    @items.each do |(qty, description, price, item_price, item_tax)|
      puts "#{qty} #{description} at #{qty * item_price}"
    end
  end

  def print_tax #DOESN'T WORK 
    tax_sum = 0
    @items.each do |(qty, description, price, item_price, item_tax)|
      tax_sum += item_tax
    end
    puts "Sales Taxes: #{tax_sum}"
  end

  def print_total
    puts 'Total: '
  end

  def create_receipt
    print_items
    print_tax
    print_total
  end
end
