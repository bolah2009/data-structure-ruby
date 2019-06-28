# frozen_string_literal: true

require './lib/full_merge_sort'

RSpec.describe '#full_merge_sort' do
  let(:array) do
    ['0 ab', '6 cd', '0 ef', '6 gh', '4 ij', '0 ab',
     '6 cd', '0 ef', '6 gh', '0 ij', '4 that', '3 be',
     '0 to', '1 be', '5 question', '1 or', '2 not',
     '4 is', '2 to', '4 the']
  end
  it { expect(full_merge_sort(array)).to be_an(Array) }

  it 'should be an array of strings' do
    expect(full_merge_sort(array).first).to be_a(String)
  end

  it 'checks an array of twenty positions' do
    actual = %w[ab ef ab ef ij to
                be or not to be ij
                that is the question cd gh
                cd gh]
    expect(full_merge_sort(array)).to eql(actual)
  end
end
