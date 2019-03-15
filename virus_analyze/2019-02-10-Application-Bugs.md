# Some Bugs in the Application

## Dot file

~~Fixed: VirusShare_001804c2ee9a44b3e8e8d0e73d516f7e.dot~~

VirusShare_3155860c4fcee4b076c6284f9951dca0.dot

> Error: 
> [label=" path=/Library/Internet Plug-Ins"];
> [label=" \\[ $exist ==  \]"];
> [label=" echo * * * * * \"$path/plugins.settings\">/dev/null 2>&1 "];

VirusShare_3b3b7a7e51d60a09e0c0e54f48b2b2db.dot

Error:

```
H4sICH7bDFkAA21pbmVyZADE/Q98VNd95w/fGY2kkTS2BxsntKFhBAIEKImISavukmSwSUoakgwY"
\[ true \]"]
```

VirusShare_6d8c25db72ec93f9cb308dbb99b767e0.dot
VirusShare_742f247c9ff393f8daf2e1609f0d9506.dot
VirusShare_765198ea7c5629637bae889e4b2fd7e9.dot
VirusShare_81d98d94c3ff744a6087961f41b096da.dot
VirusShare_87934e6519091f075815d90ef8b17733.dot
VirusShare_ad7b18dadb98ddb8698fd31e34a51e10.dot
VirusShare_c2474337dd6546c348d51083af731262.dot

## Function Node

The `error_tag` for function node is not displayed in the application.

> Check it, the graph part not return the functionnodo property information.
> Don't print the information for the functionNode and Casenode. Change it in the graph module.

## Busybox

The busybox command is showed like the Unkowen command. This is not correct. We need to change it to showed like `busybox rm` or other command.

## sodu

## Urgency (How many companies think this file is a malware file.)

Add the urgency field from the virustotal website.

---------

# Finished

- [x] Import the json file to database. We need to import the json file to database, then we can use this to do some analyze
- [x] Make the database can share with other people. Change the path save file in the json files, then we can share the config file for each laptop.
- [x] Add the normal dataset and malware dataset in the application. 