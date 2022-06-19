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
def preorder_traversal(root)
   if root == nil
       return []
   end
    
    result = []
    stack = [root]
    
    while stack.any?
        cur = stack.pop
        
        result << cur.val
        
        if cur.right
            stack << cur.right
        end
        if cur.left
            stack << cur.left
        end
    end
    result
        
end