# frozen_string_literal: true

# require './lib/sort_itself'

# RSpec.describe '#sort_itself' do
#   array = [1, 4, 3, 6, 9, 2]
#   specify { expect { sort_itself(array) }.to output.to_stdout }
# actual = "1 4 3 6 9 2\n1 3 4 6 9 2\n"\
#          "1 3 4 6 9 2\n1 3 4 6 9 2\n"\
#          "1 2 3 4 6 9\n"
# specify { expect { sort_itself(array) }.to output(actual).to_stdout }

#   specify do
#     actual = "9 8 6 7 3 5 4 1 2\n6 9 8 7 3 5 4 1 2\n"\
#              "6 7 9 8 3 5 4 1 2\n3 6 7 9 8 5 4 1 2\n"\
#              "3 5 6 7 9 8 4 1 2\n3 4 5 6 7 9 8 1 2\n"\
#              "1 3 4 5 6 7 9 8 2\n1 2 3 4 5 6 7 9 8\n"
#     array = [9, 8, 6, 7, 3, 5, 4, 1, 2]
#     expect { sort_itself(array) }.to output(actual).to_stdout
#   end
# end
