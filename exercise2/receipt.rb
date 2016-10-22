require_relative 'item'

class Receipt
  def initialize(item)
    @items = [item]
  end

  def add_item(item)
    @items.push(item)
  end

  def print_items
    @items.each do |x|
      puts x.item_details
    end
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
