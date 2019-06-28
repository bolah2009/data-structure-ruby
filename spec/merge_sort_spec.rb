# frozen_string_literal: true

require './lib/merge_sort'

RSpec.describe '#merge_sort' do
  let(:arr1) { [1, 3, 9, 11] }
  let(:arr2) { [2, 4, 6, 8] }
  it 'checks if it merges two arrays into an array' do
    expect(merge_sort(arr1, arr2)).to be_an(Array)
  end

  it 'checks an array of eight positions' do
    expect(merge_sort(arr1, arr2)).to eql([1, 2, 3, 4, 6, 8, 9, 11])
  end

  let(:array_of_first_ten_positions_1) { [-3, 2, 2, 2, 4] }
  let(:array_of_first_ten_positions_2) { [-2, 0, 1, 5, 7] }

  it 'checks an array of first ten positions' do
    expect(merge_sort(
             array_of_first_ten_positions_1, array_of_first_ten_positions_2
           )).to eql([-3, -2, 0, 1, 2, 2, 2, 4, 5, 7])
  end

  let(:array_of_second_ten_positions_1) { [-4, -3, -1, 1, 3] }
  let(:array_of_second_ten_positions_2) { [0, 5, 7, 9, 11] }

  it 'checks an array of second ten positions' do
    expect(merge_sort(
             array_of_second_ten_positions_1, array_of_second_ten_positions_2
           )).to eql([-4, -3, -1, 0, 1, 3, 5, 7, 9, 11])
  end
end

RSpec.describe '#merge_sort' do
  let(:first_array_of_twelve_positions_1) { [21, 32, 45, 62, 71, 83] }
  let(:first_array_of_twelve_positions_2) { [1, 3, 4, 7, 9, 12] }

  it 'checks an array of first twelve positions' do
    expect(merge_sort(
             first_array_of_twelve_positions_1,
             first_array_of_twelve_positions_2
           )).to eql([1, 3, 4, 7, 9, 12, 21, 32, 45, 62, 71, 83])
  end

  let(:second_array_of_twelve_positions_1) { [-91, -4, 42, 121, 265, 530] }
  let(:second_array_of_twelve_positions_2) { [-623, -54, -7, 651, 721, 850] }

  it 'checks an array of second twelve positions' do
    expect(merge_sort(
             second_array_of_twelve_positions_1,
             second_array_of_twelve_positions_2
           )).to eql([-623, -91, -54, -7, -4, 42, 121, 265, 530, 651, 721, 850])
  end
end
