# frozen_string_literal: true

require './lib/greatest_peaks'

RSpec.describe '#greatest_peaks' do
  let(:threeXthree_altitude_map) do
    [
      [9, 8, 5],
      [5, 6, 3],
      [8, 4, 1]
    ]
  end

  it 'checks a map of 3 x 3 altitude' do
    expect(greatest_peaks(threeXthree_altitude_map)).to eql([3, 6])
  end

  describe '#greatest_peaks' do
    let(:twoXtwo_altitude_map) do
      [
        [8, 12],
        [9, 3]
      ]
    end

    it 'checks a map of 2 x 2 altitude' do
      expect(greatest_peaks(twoXtwo_altitude_map)).to eql([1, 3])
    end
  end
end

RSpec.describe '#greatest_peaks' do
  let(:first_4x4_altitud_map) do
    [
      [2, 6, 9, 11],
      [7, 8, 9, 8],
      [6, 7, 12, 9],
      [10, 7, 6, 4]
    ]
  end

  it 'checks the first map of 4 x 4 altitude' do
    expect(greatest_peaks(first_4x4_altitud_map)).to eql([3, 9])
  end
end

RSpec.describe '#greatest_peaks' do
  let(:second_4x4_altitude_map) do
    [
      [4, 3, 2, 1],
      [2, 1, 0, 5],
      [0, 7, 4, 6],
      [10, 8, 4, 7]
    ]
  end

  it 'checks the second map of 4 x 4 altitude' do
    expect(greatest_peaks(second_4x4_altitude_map)).to eql([4, 7])
  end
end

RSpec.describe '#greatest_peaks' do
  let(:fiveXfive_altitude_map) do
    [
      [3, 6, 9, 11, 3],
      [5, 8, 12, 4, 6],
      [7, 10, 13, 2, 14],
      [0, 1, 5, 9, 3],
      [2, 8, 6, 4, 0]
    ]
  end

  it 'checks a map of 5 x 5 altitude' do
    expect(greatest_peaks(fiveXfive_altitude_map)).to eql([2, 13])
  end
end
