# frozen_string_literal: true

require './lib/number_of_primes'

RSpec.describe '#number_of_primes' do
  let(:array) { [55, 11, 33, 25, 15, 66, 35, 44, 16, 9, 22] }

  it 'checks if it returns an integer' do
    expect(number_of_primes(array).class).to eql(Integer)
  end

  it 'checks an array of eleven positions' do
    expect(number_of_primes(array)).to eql(1)
  end
  let(:array_of_seventeen_positions) do
    [1817, 2231, 217, 371, 155, 943, 1219, 553, 679,
     1057, 485, 253, 287, 299, 437, 713, 3473]
  end

  it 'checks an array of seventeen positions' do
    expect(number_of_primes(array_of_seventeen_positions)).to eql(0)
  end
end

RSpec.describe '#number_of_primes' do
  let(:array_of_twenty_positions) do
    [1817, 41, 2231, 217, 3631, 371, 155, 943, 1219, 553,
     8803, 679, 1057, 485, 253, 287, 299, 437, 713, 3473]
  end

  it 'checks an array of twenty positions' do
    expect(number_of_primes(array_of_twenty_positions)).to eql(3)
  end

  let(:array_of_thirty_positions) do
    [8035, 6759, 6113, 8721, 5595, 5985, 4643, 849, 629, 8933,
     3659, 6086, 4337, 4589, 9119, 8049, 9337, 3407, 28, 6771,
     1069, 3500, 8549, 9251, 2131, 5425, 2471, 11, 8173, 5277]
  end

  it 'checks an array of thirty positions' do
    expect(number_of_primes(array_of_thirty_positions)).to eql(10)
  end

  let(:array_of_forty_positions) do
    [6358, 8623, 2345, 1385, 6037, 9161, 796, 8125, 8829, 9747,
     2834, 3579, 1043, 1880, 3508, 9822, 8739, 2372, 7723, 5049,
     2661, 5982, 9692, 9427, 562, 6617, 3756, 396, 7009, 3907,
     6920, 3766, 6139, 6310, 7011, 650, 4758, 5153, 6200, 3146]
  end

  it 'checks an array of forty positions' do
    expect(number_of_primes(array_of_forty_positions)).to eql(6)
  end
end
