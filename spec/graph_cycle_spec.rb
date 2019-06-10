# frozen_string_literal: true

require './lib/graph_cycle'

RSpec.describe '#graph_cycle?' do
  let(:first_graph_of_six_nodes) do
    {
      0 => [1, 2],
      1 => [0, 2],
      2 => [0, 1, 3, 4, 5],
      3 => [2, 4],
      4 => [3, 2],
      5 => [2]
    }
  end

  it 'checks if a graph of first six nodes is a cycle' do
    expect(graph_cycle?(first_graph_of_six_nodes)).to be true
  end
end

RSpec.describe '#graph_cycle?' do
  let(:graph_of_seven_nodes) do
    {
      0 => [1, 2],
      1 => [0, 3, 4],
      2 => [0, 5, 6],
      3 => [1],
      4 => [1],
      5 => [2],
      6 => [2]
    }
  end

  it 'checks if a graph of seven nodes is a cycle' do
    expect(graph_cycle?(graph_of_seven_nodes)).to be false
  end
end

RSpec.describe '#graph_cycle?' do
  let(:second_graph_of_six_nodes) do
    {
      0 => [2],
      1 => [4, 3],
      2 => [0, 5],
      3 => [5, 1],
      4 => [1],
      5 => [2, 3]
    }
  end

  it 'checks if a graph of second six nodes is a cycle' do
    expect(graph_cycle?(second_graph_of_six_nodes)).to be false
  end
end
