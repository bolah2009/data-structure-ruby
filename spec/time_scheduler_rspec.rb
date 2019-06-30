# frozen_string_literal: true

require './lib/time_scheduler'

RSpec.describe '#time_scheduler' do
  let(:array) { [4, 8, 1, 3, 7, 9, 5, 6] }
  it 'checks if it returns an integer' do
    expect(time_scheduler(array)).to be_an(Array)
  end

  it 'checks an array of eight positions' do
    actual = [[1, 3], [5, 6], [7, 9]]
    expect(time_scheduler(array)).to eql(actual)
  end

  let(:array_of_ten_positions) { [2, 6, 5, 10, 7, 12, 0, 9, 4, 8] }
  it 'checks an array of ten positions' do
    actual = [[2, 6], [7, 12]]
    expect(time_scheduler(array_of_ten_positions)).to eql(actual)
  end

  let(:array_of_twelve_positions) { [3, 8, 1, 2, 3, 9, 1, 5, 4, 5, 8, 14] }

  it 'checks an array of twelve positions' do
    actual = [[1, 2], [4, 5], [8, 14]]
    expect(time_scheduler(array_of_twelve_positions)).to eql(actual)
  end

  let(:array_of_fourteen_positions) do
    [0, 1, 14, 16, 4, 8, 10, 12, 7, 9, 8, 15, 3, 5]
  end

  it 'checks an array of fourteen positions' do
    actual = [[0, 1], [3, 5], [7, 9], [10, 12], [14, 16]]
    expect(time_scheduler(array_of_fourteen_positions)).to eql(actual)
  end
end
