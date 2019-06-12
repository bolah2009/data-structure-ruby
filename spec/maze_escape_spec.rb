# frozen_string_literal: true

require './lib/maze_escape'

RSpec.describe '#maze_escape' do
  let(:three_x_three_maze_map) do
    [
      [0, 0, 0],
      [0, 1, 9],
      [0, 0, 0]
    ]
  end

  it 'checks a map of 3 x 3 maze' do
    actual = [
      [0, 0], [1, 0],
      [2, 0], [2, 1]
    ]
    expect(maze_escape(three_x_three_maze_map)).to eql(actual)
  end
end

RSpec.describe '#maze_escape' do
  let(:five_x_five_maze_map) do
    [
      [0, 0, 0, 0, 0],
      [0, 1, 0, 1, 0],
      [0, 1, 0, 1, 1],
      [0, 1, 0, 0, 0],
      [0, 0, 0, 1, 9]
    ]
  end

  it 'checks a map of 5 x 5 maze' do
    actual = [
      [0, 0], [1, 0], [2, 0],
      [2, 1], [2, 2], [2, 3],
      [3, 3], [4, 3], [4, 4]
    ]
    expect(maze_escape(five_x_five_maze_map)).to eql(actual)
  end
end

RSpec.describe '#maze_escape' do
  let(:seven_x_seven_maze_map) do
    [
      [0, 0, 0, 0, 1, 0, 0],
      [0, 0, 0, 0, 1, 0, 0],
      [0, 1, 1, 1, 1, 1, 1],
      [0, 0, 0, 0, 0, 0, 9],
      [0, 1, 1, 1, 1, 0, 0],
      [0, 0, 0, 0, 1, 0, 0],
      [0, 0, 0, 0, 1, 0, 0]
    ]
  end

  it 'checks a map of 7 x 7 maze' do
    actual =  [
      [0, 0], [0, 1],
      [0, 2], [0, 3],
      [1, 3], [2, 3],
      [3, 3], [4, 3],
      [5, 3], [6, 3]
    ]
    expect(maze_escape(seven_x_seven_maze_map)).to eql(actual)
  end
end

RSpec.describe '#maze_escape' do
  let(:nine_x_nine_maze_map) do
    [
      [0, 0, 0, 0, 0, 1, 0, 0, 0],
      [0, 1, 0, 1, 0, 1, 1, 0, 1],
      [0, 1, 0, 1, 0, 0, 0, 0, 0],
      [1, 1, 0, 1, 1, 1, 0, 1, 1],
      [0, 0, 0, 0, 0, 1, 0, 0, 1],
      [1, 1, 1, 1, 0, 1, 1, 1, 1],
      [0, 0, 0, 0, 0, 0, 0, 0, 1],
      [0, 1, 1, 0, 0, 1, 1, 0, 9],
      [0, 0, 1, 0, 0, 0, 0, 0, 0]
    ]
  end

  it 'checks a map of 9 x 9 maze' do
    actual = [
      [0, 0], [1, 0], [2, 0], [2, 1],
      [2, 2], [2, 3], [2, 4], [3, 4],
      [4, 4], [4, 5], [4, 6], [5, 6],
      [6, 6], [7, 6], [7, 7], [8, 7]
    ]
    expect(maze_escape(nine_x_nine_maze_map)).to eql(actual)
  end
end
