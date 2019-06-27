# frozen_string_literal: true

require './lib/advanced_quicksort'

RSpec.describe '#advanced_quicksort' do
  let(:array) { [1, 3, 9, 8, 2, 7, 5] }

  let(:array_of_nine_positions) { [9, 8, 6, 7, 3, 5, 4, 1, 2] }

  specify { expect { advanced_quicksort(array) }.to output.to_stdout }

  specify do
    actual = "1 3 2 5 9 7 8\n1 2 3 5 9 7 8\n1 2 3 5 7 8 9\n"
    expect { advanced_quicksort(array) }.to output(actual).to_stdout
  end

  specify do
    actual = "1 2 6 7 3 5 4 9 8\n1 2 6 7 3 5 4 8 9\n"\
             "1 2 3 4 6 5 7 8 9\n1 2 3 4 6 5 7 8 9\n1 2 3 4 5 6 7 8 9\n"
    expect do
      advanced_quicksort(array_of_nine_positions)
    end.to output(actual).to_stdout
  end
end

RSpec.describe '#advanced_quicksort' do
  let(:array_of_one_hundred_positions) do
    [406, 157, 415, 318, 472, 46, 252, 187, 364, 481,
     450, 90, 390, 35, 452, 74, 196, 312, 142, 160,
     143, 220, 483, 392, 443, 488, 79, 234, 68, 150,
     356, 496, 69, 88, 177, 12, 288, 120, 222, 270,
     441, 422, 103, 321, 65, 316, 448, 331, 117, 183,
     184, 128, 323, 141, 467, 31, 172, 48, 95, 359,
     239, 209, 398, 99, 440, 171, 86, 233, 293, 162,
     121, 61, 317, 52, 54, 273, 30, 226, 421, 64,
     204, 444, 418, 275, 263, 108, 10, 149, 497, 20,
     97, 136, 139, 200, 266, 238, 493, 22,  17, 39]
  end

  let(:actual) do
    File.read('./spec/array_of_one_hundred_positions_actual.txt')
  end

  specify do
    expect do
      advanced_quicksort(array_of_one_hundred_positions)
    end.to output(actual).to_stdout
  end
end
