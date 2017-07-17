require 'rspec'
require_relative '../../app/trip'
require_relative '../../app/expense'
describe 'Trip' do

  trip = Trip.new('Trip to Goa')

  it 'should create a trip object with given parameters' do
    expect(trip.name).to eq 'Trip to Goa'
  end

  it 'should be able to add expenses to the itself'do
    person_a = instance_double('Person', :name => 'A')
    person_b = instance_double('Person', :name => 'B')
    person_c = instance_double('Person', :name => 'C')
    expense_1 = instance_double("Expense", :cost => 500, :spenders => [person_a], :receivers => [person_b,person_c])
    expense_2 = instance_double("Expense", :cost => 300, :spenders => [person_b], :receivers => [person_a,person_c])

    trip.add_expense(expense_1)
    trip.add_expense(expense_2)

    expect(trip.expenses.count).to eq 2
  end
end