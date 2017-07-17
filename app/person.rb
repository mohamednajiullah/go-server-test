class Person

  attr_reader :name, :amount_spent, :amount_received

  def initialize(name)
    @name = name
    @amount_spent = 0
    @amount_received = 0
  end

  def add_amount_spent(amount_spent)
    @amount_spent += amount_spent
  end

  def add_amount_received(amount_received)
    @amount_received += amount_received
  end

  def to_s
    "#{@name}: Amount Received Rs.#{@amount_received}/-, Amount Spent Rs.#{@amount_spent}/-"
  end
end