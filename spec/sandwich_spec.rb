require_relative '../lib/sandwich.rb'

describe Sandwich do
  let(:sandwich) { Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard']) }
  
  context 'when the sandwich should be vegan' do
    it 'should not have meat' do
      expect(sandwich.meat).to eq(false)
    end

    it 'should not have cheese' do
      expect(sandwich.cheese).to eq(false)
    end

    it 'should not have mayonaise' do
      expect(sandwich.condiments).to_not include('mayonaise')
    end
  end

  context 'when the sandwich should not be vegan' do
    it 'should have meat' do
      sandwich = Sandwich.new(true, true, ['lettuce', 'tomato', 'mayonaise'])
      expect(sandwich.meat).to be(true)
    end

    it 'should have cheese' do
      sandwich = Sandwich.new(true, true, ['lettuce', 'tomato', 'mayonaise'])
      expect(sandwich.cheese).to be(true)
    end

    it 'should have mayonaise' do
      sandwich = Sandwich.new(true, true, ['lettuce', 'tomato', 'mayonaise'])
      expect(sandwich.condiments).to include('mayonaise')
    end
  end
end