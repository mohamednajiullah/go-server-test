class Trip
  attr_reader :name, :expenses

  def initialize (name)
    @name = name
    @expenses = []
  end

  def add_expense(expense)
    @expenses << expense
  end

end