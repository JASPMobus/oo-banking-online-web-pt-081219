class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiever, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
    
  def execute_transaction
    if self.valid? && @status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      @status = "processed"
    end
  end
end
