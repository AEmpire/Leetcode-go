package main

import (
	"fmt"
)

func longestCommonPrefix(strs []string) string {
	var result string
	if len(strs) == 0 {
		return result
	}
	flag := strs[0]
	for _, str := range strs {
		if len(str) < len(flag) {
			flag = str
		}
	}
	for ind, val := range flag {
		for _, str := range strs {
			if rune(str[ind]) != val {
				return result
			}
		}
		result += string(val)
	}
	return result
}

func main()  {
	fmt.Println(longestCommonPrefix([]string{}))
}