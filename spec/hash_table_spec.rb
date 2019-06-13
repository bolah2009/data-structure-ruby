# frozen_string_literal: true

require './lib/hash_table'

RSpec.describe '#hash_table' do
  let(:array) { [12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10] }

  it 'checks if it returns an array' do
    expect(hash_table(array).class).to eql(Array)
  end

  it 'checks an array of eight positions' do
    actual = [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]
    expect(hash_table(array)).to eql(actual)
  end
end

RSpec.describe '#hash_table' do
  let(:array_of_eleven_positions) do
    [7832, -3289, 980, 2367, 134, 3291, 3, -65_325, -65_326, 789, -185_007]
  end

  it 'checks an array of eleven positions' do
    actual = [7832, -3289, 980, 2367, 134, 3291, 3,
              -65_325, -65_326, 789, -185_007]
    expect(hash_table(array_of_eleven_positions)).to eql(actual)
  end
end

RSpec.describe '#hash_table' do
  let(:array_of_fifteen_positions) do
    [4376, -345, -342, 4376, -345, 84_945,
     4376, -347, -26_509, 4376, 84_945,
     84_944, -26_509, 896_341, 4376]
  end

  it 'checks an array of fifteen positions' do
    actual = [-342, 84_944, 84_945, 84_945,
              -345, -345, -347, 896_341, 4376, 4376,
              4376, 4376, 4376, -26_509, -26_509]
    expect(hash_table(array_of_fifteen_positions)).to eql(actual)
  end

  let(:array_of_twenty_positions) do
    [10_935, 12_732, -3058, 1673, 14_971,
     5701, 18_342, 4590, -10_248, -11_243,
     -5848, 14_836, 7648, -3772, -8700, 19_165,
     -16_397, -13_192, -18_946, 14_203]
  end

  it 'checks an array of twenty positions' do
    actual = [-3058, 14_971, 10_935, 1673, -11_243,
              14_203, 5701, 4590, 7648, 19_165, -13_192,
              -18_946, 12_732, 18_342, -10_248, -5848,
              -16_397, 14_836, -3772, -8700]
    expect(hash_table(array_of_twenty_positions)).to eql(actual)
  end
end
