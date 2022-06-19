# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
    return [] if root.nil?

    result = []
    stack = []
      while stack.any? || root
          while root
              stack << root
              root = root.left
          end
          
        root = stack.pop
        result << root.val
        root = root.right
      end
      result
    
  #   stack, result = [], []
  # while stack.any? || root
  #   while root
  #     stack << root
  #     root = root.left
  #   end
  #   root = stack.pop
  #   result << root.val
  #   root = root.right
  # end
  # result
    
    
end