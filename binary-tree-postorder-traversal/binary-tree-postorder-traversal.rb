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
def postorder_traversal(root)
    return [] if root.nil?

    result = []
    stack = [root]
      while stack.any?
        cur = stack.pop
        result << cur.val
        stack << cur.left if cur.left
        stack << cur.right if cur.right
      end
      result.reverse
end