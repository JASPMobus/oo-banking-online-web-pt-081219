class Transfer
  attr_accessor :sender, :receiever, :status, :amount
  
  def initialize(sender, receiever, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
    
end
