require 'pry'

class CashRegister

    attr_accessor :total, :discount, :last_transaction 
    

    def initialize(discount = 0)
      @total = 0
      @discount = discount 
    end


    def add_item (total, price, quantity = 1)
      self.last_transaction = price * quantity
      self.total = self.total + self.last_transaction
    end 

    def apply_discount 
      
      if self.discount > 0
         discount = (100 - self.discount.to_f) / 100
         self.total = (self.total * discount).to_i
        "After the discount, the total comes to $#{self.total}."
      else
        "There is no discount to apply."
      end 


    end 

    def items 
      
    end 

    def void_last_transaction

    end
  
  end

