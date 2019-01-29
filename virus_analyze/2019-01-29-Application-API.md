# Scriptdata API

**inquiryCommandInfo**

`inquiryCommandInfo(command)` is an API for user to get the command information. The output is a dictionary data structure.

output data structure:

If this is a build-in Linux Commands.

```json
{
  "name":"basename",
  "text":"basename $dir",
  "category": "Filesystem",
  "filename":""
},
```

If this is a network Linux Commands:

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

If this is an Unknown Commands:

```json
{
  "name":"doingsomething",
  "text":"doingsomething in the bashscript",
  "category": "Unknown",
  "filename":""
},
```

> If this is an Unknown command, we don't do the other work now.