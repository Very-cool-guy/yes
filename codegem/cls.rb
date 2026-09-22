class Tree
  attr_accessor :children, :node_name

  def initialize(map)
    @node_name = map.keys.first
    @children = []
    map[@node_name].each { |n, c| @children.push(Tree.new(n => c)) }
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new({"grandpa" => {"dad" => {"child 1" => {}, "child 2" => {}}, "uncle" => {"child 3" => {}, "child 4" => {}}}})
ruby_tree.visit_all {|node| puts node.node_name}
