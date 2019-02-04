# BashGraph API 

**get_complexity_tag**

`get_complexity_tag` is an API for users to get a tag that indicates whether a bash script contains IF, FOR, or WHILE structures. Call `make_graph` before calling this function. 

Input:  `None` 

Output: `False` if failed. Otherwise one of the following string

```
if
for
while
if-for
if-while
for-while
if-for-while
```