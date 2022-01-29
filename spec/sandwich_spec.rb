require_relative '../lib/sandwich.rb'

describe Sandwich do
  context 'when the sandwich should be vegan' do
    it 'should not have meat'

    it 'should not have cheese'

    it 'should not have mayonaise'
  end

  context 'when the sandwich should not be vegan' do
    it 'should have meat'

    it 'should have cheese'

    it 'should have mayonaise'
  end
end