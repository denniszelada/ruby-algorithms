class BSTreeNode
  attr_accessor :right, :left, :value
  def initialize(node_value)
    @value = node_value;
    @left = @right = nil;
  end
end

def _insert_node_into_binarysearchtree(node, data)
  if node == nil
    node = BSTreeNode.new(data)
  else
    if data <= node.value
      node.left = _insert_node_into_binarysearchtree(node.left, data);
    else
      node.right = _insert_node_into_binarysearchtree(node.right, data);
    end
  end
  return node;
end

def isPresent(root, val)
  return 0 if root.nil?
  return 1 if val == root.value
  return isPresent(root.left, val) if val < root.value
  return isPresent(root.right, val)
end

_a = nil
_a_size = Integer(gets)
_a_i = 0
while _a_i < _a_size
  _a_item = Integer(gets)
  _a = _insert_node_into_binarysearchtree(_a, _a_item)
  _a_i += 1
end

q = Integer(gets)
i = 0 

while i < q
  _b = Integer(gets)
  _result = isPresent(_a, _b)
  print _result.to_s + "\n"
  i +=1
end
