require 'player'

describe Player do
  subject(:josh) { Player.new("Josh") }
  subject(:solomon) { Player.new("Solomon") }

  describe '#name' do
    it 'returns the name' do
      expect(josh.name).to eq 'Josh'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(josh.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(solomon).to receive(:receive_damage)
      josh.attack(solomon)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { josh.receive_damage }.to change { josh.hit_points }.by(-10)
    end
  end
end
