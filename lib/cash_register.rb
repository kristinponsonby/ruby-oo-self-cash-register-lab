require "pry"
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction_amount

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction_amount = 0
        
    end

    def add_item(title, amount, quantity=1)
        self.total += amount * quantity
        quantity.times do
          items << title
        end
        self.last_transaction_amount = amount * quantity
      end


   def apply_discount
     if discount == nil
        "There is no discount to apply."
         else 
            discount = @discount.to_f / 100
            amount_off = @total.to_f * discount
            @total -= amount_off
            "After the discount, the total comes to $#{@total.to_i}."
        end
   end
      

    def void_last_transaction
        self.total -= last_transaction_amount
    end

   
end 


















