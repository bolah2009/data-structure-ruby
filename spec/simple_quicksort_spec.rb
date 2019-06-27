# frozen_string_literal: true

require './lib/simple_quicksort'

RSpec.describe '#simple_quicksort' do
  array = [5, 8, 1, 3, 7, 10, 2]
  specify { expect { simple_quicksort(array) }.to output.to_stdout }
  specify do
    actual = "2 3\n1 2 3\n7 8 10\n1 2 3 5 7 8 10\n"
    expect { simple_quicksort(array) }.to output(actual).to_stdout
  end

  specify do
    actual = "1 2\n4 5\n1 2 3 4 5\n1 2 3 4 5 6 7\n"\
             "1 2 3 4 5 6 7 8\n1 2 3 4 5 6 7 8 9\n"
    array = [9, 8, 6, 7, 3, 5, 4, 1, 2]
    expect { simple_quicksort(array) }.to output(actual).to_stdout
  end
end
