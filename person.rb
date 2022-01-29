require 'rspec/autorun'

class Person
  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  # implement your behavior here
  def full_name
    if @middle_name == nil
      "#{@first_name} #{@last_name}"
    else
      "#{@first_name} #{@middle_name} #{@last_name}"
    end
  end
end

RSpec.describe Person do
  let(:person_with_middle_name) {Person.new(first_name: "john", middle_name: "Demon", last_name: "Chena")}
  let(:person_without_middle_name) {Person.new(first_name: "john", last_name: "Chena")}
  describe "#full_name" do
    it "concatenates first name, middle name, and last name with spaces" do
      expect(person_with_middle_name.full_name).to eq('john Demon Chena')
    end
    it "does not add extra spaces if middle name is missing" do
      expect(person_without_middle_name.full_name).to eq('john Chena')
    end
  end

  # describe "#full_name_with_middle_initial"

  # describe "#initials"
end