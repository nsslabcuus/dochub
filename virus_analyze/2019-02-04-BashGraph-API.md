# BashGraph API 

**get_tags**

`get_tags` is an API for users to get all the tags for a bash script. This function must be called after `make_cfg` 
The return value of this function is a dictionary. The keys of the dic are the types of tag, and the values of each record are the tags. 

Input:  `None` 

Output: `False` if failed. Otherwise returns a dictionary of set. Each key of the dic is a type of tag. Each record of the dic is a set of tags. 

Dictionary definition:

```
{
    "complexity_tag"    :   ["for", "if", "while"]      # the value is a set() class
    "error_tag"         :   ["function", "case"]        
}

```

