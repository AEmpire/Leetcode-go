package main

import (
	"fmt"
)

//TreeNode Definition for a binary tree node.
type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

func (t *TreeNode) rigthAppend(val int) {
	t.Right = &TreeNode{val, nil, nil}
}

func (t *TreeNode) leftAppend(val int) {
	t.Left = &TreeNode{val, nil, nil}
}

func inorderTraversal(root *TreeNode) []int {

	var cur int
	var stack []*TreeNode
	var result []int
	if root == nil {
		return result
	}
	stack = append(stack, root)
	for {
		for stack[cur].Left != nil {
			stack = append(stack, stack[cur].Left)
			cur++
		}
		result = append(result, stack[cur].Val)
		if stack[cur].Right != nil {
			stack[cur] = stack[cur].Right
		} else {
			stack = stack[:cur]
			cur--
			if len(stack) == 0 {
				return result
			}
			stack[cur].Left = nil
		}
	}
}

func main() {
	root := &TreeNode{1, nil, nil}
	root.rigthAppend(5)
	root.leftAppend(4)
	root.Left.leftAppend(4)
	root.Left.rigthAppend(4)
	root.Right.rigthAppend(5)

	fmt.Println(inorderTraversal(root))
}
