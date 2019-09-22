class BankAccount
  attr_reader :name, :balance, :status
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(amnt)
    @balance += amnt 
  end
  
  def display_balance
    @balance
  end
  
  def valid?
    @status == "open" && @balance > 0 
end
