# frozen_string_literal: true

require './lib/full_counting_sort_prep'

RSpec.describe '#full_counting_sort_prep' do
  let(:array) do
    ['4 that', '3 be', '0 to',
     '1 be', '5 question', '1 or',
     '2 not', '4 is', '2 to', '4 the']
  end

  it { expect(full_counting_sort_prep(array)).to be_an(Array) }

  it 'checks an array' do
    actual =
      [1, 3, 5, 6, 9, 10, 10, 10, 10, 10,
       10, 10, 10, 10, 10, 10, 10, 10, 10,
       10, 10, 10, 10, 10, 10, 10, 10, 10,
       10, 10, 10, 10, 10, 10, 10, 10, 10,
       10, 10, 10, 10, 10, 10, 10, 10, 10,
       10, 10, 10, 10, 10, 10, 10, 10, 10,
       10, 10, 10, 10, 10, 10, 10, 10, 10,
       10, 10, 10, 10, 10, 10, 10, 10, 10,
       10, 10, 10, 10, 10, 10, 10, 10, 10,
       10, 10, 10, 10, 10, 10, 10, 10, 10,
       10, 10, 10, 10, 10, 10, 10, 10, 10]
    expect(full_counting_sort_prep(array)).to eql(actual)
  end
end
