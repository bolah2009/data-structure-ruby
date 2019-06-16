# frozen_string_literal: true

require './lib/find_pairs'

RSpec.describe '#find_pairs' do
  it 'checks if it returns an integer' do
    expect(find_pairs([1, 3, 5, 11], 14).class).to eql(Array)
  end

  it 'checks an array of four positions' do
    expect(find_pairs([1, 3, 5, 11], 14)).to eql(3)
  end

  it 'checks an array of seven positions' do
    expect(find_pairs([1, 9, 11, 13, 2, 3, 7], 12)).to eql([[1, 11], [9, 3]])
  end

  let(:array_of_nine_positions) { [8, 17, 5, 11, 9, 6, 3, 2, 15] }

  it 'checks an array of nine positions' do
    expect(find_pairs(array_of_nine_positions, 21)).to eql([[6, 15]])
  end

  let(:array_of_eleven_positions) { [-8, 7, 11, 8, 5, 9, 3, 6, 2, -9, 4] }

  it 'checks an array of eleven positions' do
    expect(find_pairs(array_of_eleven_positions, 0)).to eql([[-8, 8], [9, -9]])
  end

  let(:array_of_nineteen_positions) do
    [17, -20, 21, -3, 33, 10, 6, -11, 19,
     40, 11, 17, 56, 33, 72, 5, 1, 36, 51]
  end

  it 'checks an array of nineteen positions' do
    actual = [[21, 19], [-11, 51]]
    expect(find_pairs(array_of_nineteen_positions, 40)).to eql(actual)
  end
end
