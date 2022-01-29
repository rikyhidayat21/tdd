require_relative '../lib/board.rb'

RSpec.describe Board do
  describe '#total_pieces' do
    it 'has a total of 32 pieces' do
      b = Board.new
      expect(b.total_pieces).to eq(32)
    end
  end
end