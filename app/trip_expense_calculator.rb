require 'person'
require 'expense'
require 'trip'

class TripExpenseCalculator
end

person_a = Person.new('A')
person_b = Person.new('B')
person_c = Person.new('C')
person_d = Person.new('D')

expense_1 = Expense.new(300,[person_a],[person_b,person_c],'Bus Ticket')
expense_2 = Expense.new(500,[person_b],[person_c,person_d], 'Popcorn')
expense_3 = Expense.new(600,[person_c,person_d],[person_a,person_b,person_c,person_d],'Movies')

trip = Trip.new('Trip to Movies')
trip.add_expense(expense_1)
trip.add_expense(expense_2)
trip.add_expense(expense_3)