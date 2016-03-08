# File: student.rb

class Student

  GOOD_AVERAGE = 85
  MAX_POOR_ANUAL_INCOME = 15_000

  attr_reader :name, :id

  def initialize(name, id, anual_income)
    @name = name
    @id = id
    @anual_income = anual_income
    @grades = []
  end

  def reset_anual_income(anual_income)
    previous_anual_income = @anual_income
    @anual_income = anual_income
    previous_anual_income
  end

  def add_grade(grade)
    @grades << grade
    self
  end

  def display_personal_information_and_disclaimer
    # Display Personal Information
    puts "Name: #{ @name } ID: #{ @id }"
    puts "Anual income: #{ @anual_income }"
    sum = 0
    @grades.each do |grade|
      sum += grade
    end
    average = sum / @grades.size.to_f
    puts "Grade average: #{ average }"

    # Display Disclaimer
    puts 'The contents of this class must not be considered an offer,'
    puts 'proposal, understanding or agreement unless it is confirmed'
    puts 'in a document signed by at least five blood-sucking lawyers.'
  end

  def scholarship_worthy?
    # Nothing reasonable to do if this student has currently no grades.
    return -1 if @grades.empty?

    # A student is worthy of a scholarship if he/she has good grades and
    # is poor.
    sum = 0
    @grades.each do |grade|
      sum += grade
    end
    average = sum / @grades.size.to_f
    (average >= GOOD_AVERAGE) and (@anual_income < MAX_POOR_ANUAL_INCOME)
  end

end 
