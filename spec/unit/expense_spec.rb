require 'rspec'
require_relative '../../app/person'
require_relative '../../app/expense'

describe 'Expense' do

  person_a = Person.new('A')
  person_b = Person.new('B')
  person_c = Person.new('C')
  expense = Expense.new(500, [person_a], [person_b,person_c])

  it 'should be able to create an expense with given parameters' do

    expect(expense.cost).to eq 500
    expect(expense.spenders.count).to eq 1
    expect(expense.receivers.count).to eq 2

  end

  it 'should be able to calculate spending shares for the expense incurred' do
    expect(expense.calculate_individual_spending_share).to eq 500
  end

  it 'should be able to calculate receiving shares for the expense incurred' do
    expect(expense.calculate_individual_receiving_share).to eq 250
  end
end