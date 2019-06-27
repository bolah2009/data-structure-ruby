# frozen_string_literal: true

require './lib/quicksort_running_time'

RSpec.describe '#quicksort_running_time' do
  let(:array) { [1, 3, 9, 8, 2, 7, 5] }

  it 'checks if it returns an integer' do
    expect(quicksort_running_time(array)).to be_an(Integer)
  end

  it 'checks an array of seven positions' do
    expect(quicksort_running_time(array)).to eql(1)
  end

  let(:array_of_first_ten_positions) { [10, 9, 8, 7, 6, 5, 4, 3, 2, 1] }

  it 'checks an array of first ten positions' do
    expect(quicksort_running_time(array_of_first_ten_positions)).to eql(16)
  end

  let(:array_of_second_ten_positions) { [1, 3, 4, 5, 2, 7, 8, 9, 6, 10] }

  it 'checks an array of second ten positions' do
    expect(quicksort_running_time(array_of_second_ten_positions)).to eql(-16)
  end
end

RSpec.describe '#quicksort_running_time' do
  let(:array_of_one_hundred_positions) do
    [406, 157, 415, 318, 472, 46, 252, 187, 364, 481,
     450, 90, 390, 35, 452, 74, 196, 312, 142, 160, 143,
     220, 483, 392, 443, 488, 79, 234, 68, 150, 356, 496,
     69, 88, 177, 12, 288, 120, 222, 270, 441, 422, 103,
     321, 65, 316, 448, 331, 117, 183, 184, 128, 323, 141,
     467, 31, 172, 48, 95, 359, 239, 209, 398, 99, 440, 171,
     86, 233, 293, 162, 121, 61, 317, 52, 54, 273, 30, 226,
     421, 64, 204, 444, 418, 275, 263, 108, 10, 149, 497, 20,
     97, 136, 139, 200, 266, 238, 493, 22, 17, 39]
  end

  it 'checks an array of hundred positions' do
    expect(quicksort_running_time(array_of_one_hundred_positions)).to eql(2432)
  end
  let(:array_of_four_hundred_positions) do
    File.read('./spec/array_of_four_hundred_input.txt')
        .rstrip.split(' ').map(&:to_i)
  end

  it 'checks an array of four hundred positions' do
    expect(quicksort_running_time(array_of_four_hundred_positions))
      .to eql(38_608)
  end
end
