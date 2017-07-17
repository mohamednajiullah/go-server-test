require 'rspec'
require_relative '../../app/person'

describe 'Person' do
  person = Person.new('A')

  it 'should create object with passed parameters' do
    expect(person.name).to eq 'A'
    expect(person.amount_spent).to eq 0
    expect(person.amount_received).to eq 0
  end

  it 'should be able to add amount spent' do
    person.add_amount_spent(500)
    person.add_amount_spent(300)
    expect(person.amount_spent).to eq 800
  end

  it 'should be able to add amount received' do
    person.add_amount_received(500)
    person.add_amount_received(200)
    expect(person.amount_received).to eq 700
  end
end