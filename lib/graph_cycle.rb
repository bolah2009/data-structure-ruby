# frozen_string_literal: true

def graph_cycle?(graph)
  stack = [0]
  visited = []

  until stack.empty?
    head = stack.pop
    return true if visited.size > 2 && (visited.include? head)

    return false if graph[head].nil?

    visited << head
    not_visited = graph[head].reject { |node| visited.include? node }

    stack += not_visited.reverse
  end

  false
end
