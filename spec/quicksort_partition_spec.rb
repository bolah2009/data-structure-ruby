# frozen_string_literal: true

require './lib/quicksort_partition'

RSpec.describe '#partition' do
  let(:array) { [4, 5, 3, 9, 1] }
  let(:array_of_nine_positions) { [2, 10, 3, 7, 9, 4, 6, 12, 8] }
  let(:array_of_twenty_positions) do
    [45, 25, 46, 48, 28, 6, 13, 5, 36, 44,
     7, 4, 11, 30, 24, 34, 15, 31, 38, 49]
  end

  it { expect(partition(array)).to be_an(Array) }

  it 'checks an array' do
    expect(partition(array)).to eql([3, 1, 4, 5, 9])
  end

  it 'checks an array of nine positions' do
    actual = [2, 10, 3, 7, 9, 4, 6, 12, 8]
    expect(partition(array_of_nine_positions)).to eql(actual)
  end

  it 'checks an array of twenty positions' do
    actual = [25, 28, 6, 13, 5, 36, 44, 7, 4, 11,
              30, 24, 34, 15, 31, 38, 45, 46, 48, 49]
    expect(partition(array_of_twenty_positions)).to eql(actual)
  end
end
