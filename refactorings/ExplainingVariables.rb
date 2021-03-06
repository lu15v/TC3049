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
    display_personal_information
    display_disclaimer
  end

  def scholarship_worthy?
    # Nothing reasonable to do if this student has currently no grades.
    return -1 if @grades.empty?

    good_grades = average >= GOOD_AVERAGE
    is_poor = @anual_income < MAX_POOR_ANUAL_INCOME
    good_grades and is_poor
  end

  private

  def average
    sum = 0
    @grades.each do |grade|
      sum += grade
    end
    sum / @grades.size.to_f
  end

  def display_personal_information
    puts "Name: #{ @name } ID: #{ @id }"
    puts "Anual income: #{ @anual_income }"
    puts "Grade average: #{ average }"
  end

  def display_disclaimer
    puts 'The contents of this class must not be considered an offer,'
    puts 'proposal, understanding or agreement unless it is confirmed'
    puts 'in a document signed by at least five blood-sucking lawyers.'
  end

end
