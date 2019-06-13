# frozen_string_literal: true

require './lib/sets'

RSpec.describe '#find_duplicates' do
  let(:array) { [3, 17, 23, -43, 67, 5, 888, -402, 235, 77, 99, 311, 1, -43] }

  it 'checks if it returns an array' do
    expect(find_duplicates(array).class).to eql(Array)
  end

  it 'checks if it returns only one duplicate' do
    expect(find_duplicates(array).count).to eql(1)
  end

  let(:array_of_nine_positions) do
    [4376, -345, -345,
     4376, -345, 84_945,
     4376, -345, -26_509]
  end

  it 'checks an array of nine positions' do
    actual = [-345, 4376, -345, 4376, -345]
    expect(find_duplicates(array_of_nine_positions)).to eql(actual)
  end
end

RSpec.describe '#find_duplicates' do
  let(:array_of_ten_positions) { [1, 2, 3, 1, 5, 6, 7, 8, 5, 2] }

  it 'checks an array of ten positions' do
    actual = [1, 5, 2]
    expect(find_duplicates(array_of_ten_positions)).to eql(actual)
  end

  let(:array_of_twelve_positions) do
    [2367, -65_326, 134, -185_007, 3291, 7832,
     -65_326, 789, 675_432, 980, -3289, 3490]
  end

  it 'checks an array of twelve positions' do
    actual = [-65_326]
    expect(find_duplicates(array_of_twelve_positions)).to eql(actual)
  end
end

RSpec.describe '#find_duplicates' do
  let(:array_of_fifteen_positions) do
    [3, 443, 67, 25, 501,
     917, 23, 888, -402, 235,
     377, 99, 311, 443, 1]
  end

  it 'checks an array of fifteen positions' do
    actual = [443]
    expect(find_duplicates(array_of_fifteen_positions)).to eql(actual)
  end

  let(:array_of_twenty_positions) do
    [85, 105, 90, 275, 30, 100, 275, 110, 125, 130,
     275, 10, 20, 30, 45, 50, 275, 65, 70, 111]
  end

  it 'checks an array of twenty positions' do
    actual = [275, 275, 30, 275]
    expect(find_duplicates(array_of_twenty_positions)).to eql(actual)
  end
end
