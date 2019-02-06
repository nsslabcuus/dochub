# BashGraph API 

## load_file

`load_file` is an API for users to load their `.out` file into the program. This function is usually the first function to be called after an `BashGraph` object is created. 

**Input:**  `fname: string` is a string indicating the path of the `.out` file. 

**Output:** `None`. 



## make_graph

`make_graph` is an API for users to initiate many internal states of the `BashGraph` object.  `load_file` must be called before this function. 

**Input:**  `None`

**Output:** `True` is successful and `False` if failed. 



## print_graph
`print_graph` is an API for users to print the `.dot` file to the standard output. If you want to print it to a file, use something like this:

``` python
sys.stdout = open(dot_tmp_file, "w")
g.print_graph()
sys.stdout = orig_stdout
```

**Input:** `None`

**Output:** `False` if failed. Otherwise `True`.




## get_tags

`get_tags` is an API for users to get all the tags for a bash script. `make_graph` must be called before this function. 
The return value of this function is a dictionary. The keys of the dic are the types of tag, and the values of each record are the tags. 

**Input:**  `None` 

**Output:** `False` if failed. Otherwise returns a dictionary of set. Each key of the dic is a type of tag. Each record of the dic is a set of tags. 

**Dictionary definition:**

```
{
    "complexity_tag"    :   ["for", "if", "while"]      # the value is a set() class. has IF, FOR, WHILE 
    "error_tag"         :   ["function", "case"]        # has FunctionNode, CaseNode       
    "node_type"         :   ["external", "unknown"]     # has external and unknown commands
}

```

