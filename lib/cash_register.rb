require 'pry'
class CashRegister 

    attr_accessor :total, :discount, :items, :last_price

    def initialize employee_discount = 0 
        @discount = employee_discount 
        @total = 0
        @items = []
        @last_price 
    end

    def total 
        @total
    end

    def add_item  title, price, quantity= 1
 
     
        quantity.times do 
        self.items << title

        end
        self.last_price = price * quantity 
        self.total += price * quantity 
    end

    def apply_discount 
        if self.discount > 0 
        self.total = self.total - (self.discount/100.to_f) * self.total 
        "After the discount, the total comes to $#{self.total.to_i}."
        else 
            "There is no discount to apply."
        end
    end 

    def void_last_transaction
        self.total = self.total - self.last_price
    end


end

binding.pry