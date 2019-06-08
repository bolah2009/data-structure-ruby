# frozen_string_literal: true

require './lib/linkedlist'

RSpec.describe LinkedList do
  let(:list) { LinkedList.new }

  describe '#add' do
    it 'get node value after 2 adds' do
      list.add(3)
      list.add(5)
      expect(list.get(1)).to eql(5)
    end
  end
end

describe LinkedList do
  let(:list) { LinkedList.new }

  describe '#add_at' do
    it 'add an item to a specific location in the list' do
      list.add(1)
      list.add(2)
      list.add(3)
      list.add_at(3, 10)
      expect(list.get(3)).to eql(10)
    end

    it 'add an item to the first location in the list' do
      list.add(1)
      list.add_at(0, 5)
      expect(list.get(0)).to eql(5)
    end

    it 'add an item to an empty list' do
      list.add_at(0, 5)
      expect(list.get(0)).to eql(5)
    end
  end
end

describe LinkedList do
  let(:list) { LinkedList.new }

  describe '#remove' do
    it 'remove an item from a specific location in the List' do
      list.add(1)
      list.add(2)
      list.add(3)
      list.remove(2)
      list.remove(1)
      list.remove(0)
      expect(list.get(0)).to be_nil
    end
  end

  describe '#empty?' do
    it 'checks if list is empty after adding a value' do
      list.add(1)
      expect(list.empty?).to be false
    end

    it 'checks if list is empty when head is nil' do
      expect(list.empty?).to be true
    end
  end
end
