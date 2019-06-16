# frozen_string_literal: true

require './lib/insertion_sort'

RSpec.describe '#insertion_sort' do
  specify { expect { insertion_sort([1, 3, 2]) }.to output.to_stdout }
  actual = "1 3 3\n1 2 3\n"
  specify { expect { insertion_sort([1, 3, 2]) }.to output(actual).to_stdout }

  specify do
    actual = "1 4 6 9 9\n1 4 6 6 9\n1 4 4 6 9\n1 3 4 6 9\n"
    expect { insertion_sort([1, 4, 6, 9, 3]) }.to output(actual).to_stdout
  end

  specify do
    actual = "2 3 4 5 6 7 8 9 10 10\n2 3 4 5 6 7 8 9 9 10\n"\
             "2 3 4 5 6 7 8 8 9 10\n2 3 4 5 6 7 7 8 9 10\n"\
             "2 3 4 5 6 6 7 8 9 10\n2 3 4 5 5 6 7 8 9 10\n"\
             "2 3 4 4 5 6 7 8 9 10\n2 3 3 4 5 6 7 8 9 10\n"\
             "2 2 3 4 5 6 7 8 9 10\n1 2 3 4 5 6 7 8 9 10\n"
    array = [2, 3, 4, 5, 6, 7, 8, 9, 10, 1]
    expect { insertion_sort(array) }.to output(actual).to_stdout
  end
end

RSpec.describe '#insertion_sort' do
  actual = "1 3 5 9 13 22 27 35 46 51 55 83 87 87\n"\
           "1 3 5 9 13 22 27 35 46 51 55 83 83 87\n"\
           "1 3 5 9 13 22 27 35 46 51 55 55 83 87\n"\
           "1 3 5 9 13 22 27 35 46 51 51 55 83 87\n"\
           "1 3 5 9 13 22 27 35 46 46 51 55 83 87\n"\
           "1 3 5 9 13 22 27 35 35 46 51 55 83 87\n"\
           "1 3 5 9 13 22 27 27 35 46 51 55 83 87\n"\
           "1 3 5 9 13 22 23 27 35 46 51 55 83 87\n"
  specify do
    array =  [1, 3, 5, 9, 13, 22, 27, 35, 46, 51, 55, 83, 87, 23]

    expect { insertion_sort(array) }.to output(actual).to_stdout
  end
end
