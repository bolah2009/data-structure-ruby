# frozen_string_literal: true

require './lib/full_counting_sort'

RSpec.describe '#full_counting_sort' do
  let(:array) do
    ['0 ab', '6 cd', '0 ef', '6 gh', '4 ij',
     '0 ab', '6 cd', '0 ef', '6 gh', '0 ij',
     '4 that', '3 be', '0 to', '1 be', '5 question',
     '1 or', '2 not', '4 is', '2 to', '4 the']
  end

  it { expect(full_counting_sort(array)).to be_an(Array) }

  it 'checks an array' do
    actual = %w[ab ef ab ef ij
                to be or not to
                be ij that is the
                question cd gh cd gh]
    expect(full_counting_sort(array)).to eql(actual)
  end
end
