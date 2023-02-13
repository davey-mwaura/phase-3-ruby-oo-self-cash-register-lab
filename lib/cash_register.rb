class CashRegister
    attr_accessor :total, :discount, :last_transaction
  
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @last_transaction = 0
    end
  
    def add_item(price, quantity = 1)
      self.total += price * quantity
      self.last_transaction = price * quantity
    end
  
    def apply_discount
      self.total = (total * (100 - discount).to_f / 100).to_i
    end
  
    def void_last_transaction
      self.total -= last_transaction
    end
  end
  
