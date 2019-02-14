# Scriptdata API

**inquiryCommandInfo**

`inquiryCommandInfo(command)` is an API for the user to get the command information. The output is a dictionary data structure.

output data structure:

If this is a built-in Linux Command.

```json
{
  "name":"basename",
  "text":"basename $dir",
  "category": "filesystem",
  "filename":""
},
```

If this is a network Linux Command.

```json
{
  "name":"wget",
  "text":"wget -o BINARY_FILE",
  "category": "network",
  "downloaded": "True",
  "filename":"fysxe.xy"
},
```

If the `downloaded` parameter is `True` and, the `text` will have the text which I suggest to changed.

Otherwise, if the `downloaded` parameter is not true, don't check the filename information, just keep the original command information in the graph. 

```json
{
  "name":"ssh",
  "category": "network",
  "downloaded": "False",
  "filename":""
},
```

If this is an Unknown Command.

```json
{
  "name":"doingsomething",
  "text":"doingsomething in the bashscript",
  "category": "unknown",
  "filename":""
},
```

> If this is an Unknown command, we don't do the other work now.\

If this is a Binary file.

```json
{
  "name":"fysxe.xy",
  "text":"Run BinaryFile",
  "category": "binaryfile",
  "filename":""
},
```

If this is an assignment.

```json
{
  "name":"name",
  "text":"x=y",
  "category": "assignment",
  "filename":""
},
```

If this is an condition.

```json
{
  "name":"\[ True \]",
  "text":"\[ True \]",
  "category": "condition",
  "filename":""
},
```
