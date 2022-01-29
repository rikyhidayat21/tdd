require 'player'

describe Player do
  it 'returns name' do
    player = Player.new
    player_name = player.name
    expect(player_name).to eq('riky')
  end

  it 'calculate the correct credit remaining' do
    player = Player.new
    player.credits = 1.5
    player.sub_credits(1.3)
    
    expect(player.credits).to be_within(0.0001).of (0.19999)
  end

  it 'returns the correct value for the players active status' do
    player = Player.new
    player.active = nil

    expect(player.active).to be_falsey
  end

  it 'returns an error when sub_credits is passed a zero credit value' do
    player = Player.new
    player.credits = 2

    expect {player.sub_credits(0)}.to raise_exception(StandardError)
  end

end