class Expense

  attr_reader :cost, :receivers, :spenders

  def initialize(cost, spenders, receivers, for_expense = 'Expense')
    @cost = cost
    @spenders = spenders
    @receivers = receivers
    @for_expense = for_expense
  end

  def calculate_individual_spending_share
    @cost.to_f/@spenders.length
  end

  def calculate_individual_receiving_share
    @cost.to_f/@receivers.length
  end

end