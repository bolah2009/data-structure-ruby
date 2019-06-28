# frozen_string_literal: true

require './lib/index_match'

RSpec.describe '#index_match' do
  let(:array) { [0, 2, 3, 7, 9, 11] }

  it { expect(index_match(array)).to be_an(Integer) }

  it 'checks an array of six positions' do
    expect(index_match(array)).to eql(0)
  end

  let(:array_of_seven_positions) { [3, 5, 7, 9, 11, 13, 17] }

  it 'checks an array of seven positions' do
    expect(index_match(array_of_seven_positions)).to eql(-1)
  end

  let(:array_of_eight_positions) { [-4, -2, 0, 2, 4, 6, 8, 10] }

  it 'checks an array of eight positions' do
    expect(index_match(array_of_eight_positions)).to eql(4)
  end

  let(:array_of_ten_positions) { [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] }

  it 'checks an array of ten positions' do
    expect(index_match(array_of_ten_positions)).to eql(-1)
  end

  let(:array_of_twelve_positions) do
    [-20, -15, -11, 2, 5, 7, 10, 11, 12, 13, 14, 14]
  end

  it 'checks an array of twelve positions' do
    expect(index_match(array_of_twelve_positions)).to eql(-1)
  end
end
