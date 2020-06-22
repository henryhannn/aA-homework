require 'set'

class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        @val = val
        @neighbors = []
    end
end

def bfs(starting_node, target_value)
    queue = [starting_node]
    visited_node = Set.new()

    while !queue.empty?
        node = queue.shift
        if !visited.include?(node)
            return node.val if node.val == target_value
            visited.add(node)
            queue += node.neighbors
        end
    end
    nil
end