require 'rspec/autorun'

class Calculator

  def add(a,b)
    a + b
  end

  def subs(a,b)
    a - b
  end
end

describe Calculator do
	describe '#add' do
		it 'returns the sum of two arguments' do
			calculator = Calculator.new
			
			expect(calculator.add(1,1)).to eq(2)
		end

    it 'returns the sum of two differents arguments' do
      calc = Calculator.new

      expect(calc.add(1,3)).to eq(4)
    end
	end

  describe '#subs' do
    it 'returns the total substract of two arguments' do
      calc = Calculator.new

      expect(calc.subs(2,2)).to eq(0)
    end

    it 'returns the total substract of two differents arguments' do
      calc = Calculator.new

      expect(calc.subs(5,1)).to eq(4)
    end
  end
end