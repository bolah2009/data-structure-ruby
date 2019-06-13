# frozen_string_literal: true

require './lib/maps'

RSpec.describe '#appears_most_times' do
  let(:array) { [3, 3, 7, 8] }

  it 'checks if it returns an integer' do
    expect(appears_most_times(array).class).to eql(Integer)
  end

  it 'checks an array of five positions' do
    expect(appears_most_times([1, 2, 3, 1, 5])).to eql(1)
  end

  it 'checks an array of six positions' do
    expect(appears_most_times([10, 10, 20, 30, 20, 20])).to eql(20)
  end

  it 'checks an array of eight positions' do
    expect(appears_most_times([3, 2, 19, 4, 19, 19, 3, 2])).to eql(19)
  end
end

RSpec.describe '#appears_most_times' do
  let(:array_of_ten_positions) do
    [3_594_976, 2340, 3_594_976, 74_390, -453_894,
     32_076, 42, 7888, -21_085, -320_566]
  end

  it 'checks an array of ten positions' do
    expect(appears_most_times(array_of_ten_positions)).to eql(3_594_976)
  end

  let(:array_of_twelve_positions) do
    [2367, -65_326, 134, -185_007, 3291, 7832,
     -65_326, 789, 675_432, 980, -3289, 3490]
  end

  it 'checks an array of twelve positions' do
    expect(appears_most_times(array_of_twelve_positions)).to eql(-65_326)
  end
end

RSpec.describe '#appears_most_times' do
  let(:array_of_fifteen_positions) do
    [4376, -345, -345, 4376, -345,
     84_945, 4376, -345, -26_509, 4376,
     84_945, 84_945, -26_509, 896_341, 4376]
  end

  it 'checks an array of fifteen positions' do
    expect(appears_most_times(array_of_fifteen_positions)).to eql(4376)
  end

  let(:array_of_twenty_positions) do
    [85, 105, 90, 275, 30, 100, 275, 110, 125, 130,
     275, 10, 20, 30, 45, 50, 275, 65, 70, 111]
  end

  it 'checks an array of twenty positions' do
    expect(appears_most_times(array_of_twenty_positions)).to eql(275)
  end
end
