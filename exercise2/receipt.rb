require_relative 'item'

# Receipt class
class Receipt
  attr_accessor :items
  attr_accessor :tax
  attr_accessor :display_items
  attr_accessor :total

  def initialize
    @items = []
    @tax = []
    @total = []
  end

  def add_item(qty, item)
    @items.push([qty,
      item.description,
      item.price.round(2),
      item.total_price.round(2)
      ])
    @tax.push(item.total_tax.round(2))
    @total.push(item.total_price.round(2))
  end

  def display_items
    @items.each do |(qty, description, price, total_price)|
      puts "#{qty} #{description}: #{total_price}"
    end
  end

  def display_tax_line
    "Sales Taxes: #{@tax.inject{ |sum,x| sum + x }}"
  end

  def display_total_line
    "Total: #{@total.inject{ |sum,x| sum + x }}"
  end

  def print_receipt
    display_items
    puts display_tax_line
    puts display_total_line
  end

end
