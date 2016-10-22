require_relative 'item'

# Receipt class
class Receipt
  attr_reader :items

  def initialize(qty, item)
    @items = []
    add_item(qty, item)
  end

  def add_item(qty, item)
    @items.push([qty, item])
  end

  def print_items
    @items.each do |qty, item|
      puts "#{qty} #{item.item_details}"
    end
  end

  def print_tax
    puts 'Sales Taxes: '
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
