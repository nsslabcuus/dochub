# Weekly Work Record

## Week Work

- [x] Deal with the command classify. Generate a table which sort by the numbers of files.
The link: [Sort by number of files](https://nsslabcuus.github.io/dochub/virus_analyze/2019-04-19-Commands-Classify.html#sort-by-number-of-files)

- [x] Merge the other 2470 bash scripts into our malware dataset. (These bash scripts are come from the malware github repo.) [Github Repo](https://github.com/search?p=3&q=stars%3A%3E50&s=stars&type=Repositories)

There are only 451 new bash scripts which we can add into our malware dataset. And, the new files link: [Github Repo](https://github.com/guozetang/IoT-Malware-Dataset-App/blob/master/bashData/new_files_md5_record.json)

- [x] Build some tool to understand the bash script. (Extencd)--- Not Hard code, use some design config files.

We extracted some file which we can use to train our model. And use some normal scrips to test the model.

- [x] Get the script result from the VirusShare for malware dataset and normal dataset. (Normal Dataset)

We finished the malware dataset. But, we also need one more week to finish the download for the normal dataset.

- [x] Find other system call to monitor the parameter in the command. -- Can we use some other approacth to catch the system call.

## Next week Plan

- [ ] Find some way to detect the build-in command system call sequences (To make sure the Bash how to implement cd command in the Linux system.)
- [ ] Do more research about the ftrace, to make sure how many brand use this framework, how many IoT things use this.
- [ ] Write some documents in our project.

Some links about the linux build-in commands:

* http://web.archive.org/web/20090515201659/http://www.cs.ucr.edu/~brett/cs153_w02/syscall.html


Some Link:


* [Github Repo about the ftrace](https://github.com/ilammy/ftrace-hook)
* [Frace](https://blog.louie.lu/2017/12/28/building-lede-openwrt-tp-link-c2600-ftrace-enable/)
* [How to hook the linux system call](https://www.apriorit.com/dev-blog/544-hooking-linux-functions-1)
* [Hook Example](https://www.apriorit.com/dev-blog/546-hooking-linux-functions-2)
* [How to config the Frace in the openwrt](https://blog.louie.lu/2017/12/28/building-lede-openwrt-tp-link-c2600-ftrace-enable/)

## Other work

## Record

### Last week

- [x] Write script to get the malware scripts in from a new malware scripts repo.
- [x] Change our Linux commands dataset. (Include more Linux commands in our dataset.)

**03/18/2019 - 03/22/2019**

- [x] Collect more normal bash scripts from Github. [Target Repo](https://github.com/search?p=3&q=stars%3A%3E50&s=stars&type=Repositories)

We focus on the Github repo which get the starts more than 50. There are **244,162** repository results. We try to write a GitHub spiders clone these repositories and extract bash scripts from these repositories. (Keep Record the source for each bash scripts.)

I have collected almost **9.341** normal bash scripts from **1987** repos on Github. Test these bash scripts by the bash script parser module.

* Total normal scripts: 9,341
* Passed(Parsed): 5,914 (Failed: 3,427)

<!-- * All Passed: 335
* Failed: 427
  * Parser failed: 286
  * Generate Graph Filed: 141 (Function: 56, if: 93, while: 67, case: 96, for: 33) -->

- [x] Fix some bugs in the application. [Application Todo List](https://nsslabcuus.github.io/dochub/virus_analyze/2019-02-10-Application-Bugs.html)

We need to use the normal bash script to generate the normal node file and graph files. After then, we use this information to build our normal bash scripts dataset.)

**Next Week Todo**

- [ ] Collect more normal bash scripts from Github. [Target Repo](https://github.com/search?p=3&q=stars%3A%3E50&s=stars&type=Repositories)
- [ ] Test the Normal bash scripts by our applictaion.
- [ ] Choose 100 malware bash scripts in our dataset. We change some small part in these scripts to make sure we can run these script and get the system call sequences.


**03/11/2019 - 03/15/2019**

- [x] Collected the normal Linux bash scripts from the SHELLdorado website. [Private Repo Introduce](https://nsslabcuus.github.io/dochub/virus_analyze/2019-03-06-Github-Repo-Link.html), [Dataset Link](https://github.com/guozetang/IoT-Malware-Dataset-App/tree/normal-dataset)
  - Download files from this website.
  - Write a python script to extract bash script file from the downloaded files

I have collected almost **800** normal bash scripts from Github or some book resource. Test these bash scripts by the bash script parser module.

* Total normal scripts: 762
* All Passed: 335
* Failed: 427
  * Parser failed: 286
  * Generate Graph Filed: 141 (Function: 56, if: 93, while: 67, case: 96, for: 33)

- [x] Built the normal bash scripts dataset. Add the dataset to our application. 
- [x] Fix some bugs in the application. [Application Todo List](https://nsslabcuus.github.io/dochub/virus_analyze/2019-02-10-Application-Bugs.html)


We need to use the normal bash script to generate the normal node file and graph files. After then, we use this information to build our normal bash scripts dataset.)

**Next Week Todo**

- [ ] Collect more normal bash scripts from Github. [Target Repo](https://github.com/search?p=3&q=stars%3A%3E50&s=stars&type=Repositories)

We focus on the Github repo which get the starts more than 50. There are **244,162** repository results. We try to clone these repo and extract bash scripts from these repo.

- Record the source for each bash scripts.

**02/04/2019 - 02/08/2019**
**This Week TODO List**

- [ ] Build the bash parser module to the main application(---Move to next week)
- [ ] ~~Integrate Fei Ding's part in the application (Maybe---Waiting for Hongda rebuild it)~~
- [x] Generate 1.000 dot file as the Feiding's project input (Generate 1750 dot files for test)
  - Remove the binary file name in the bash scripts files.
  - Deal with the network commands for `wget, ftp, tftp, curl` using a different style. (Move the network commands to small parts.)
- [x] Collect the feedback and change the script data module about remove the Download Binary file name. (Add the assignment)
  - Deal with the unknown commands about the `assignment`
  - Add the property field and search function in the table.(Change the database). We can use it to analyze the bash scripts in our dataset.
  - Add the export function in the application, we can use it to export the search result in our application.
  - Reduce the Linux commands which used in all the bash scripts by removing the binary file name.
  - Add the code to record commands ===>> bash scripts map.
- [x] Monitor development: Map the commands in the bash scripts to the IoT driver system call. (Partner: Lavaniyaa. )
  - Using a `strace` tool to trace the system call in the Raspbian OS (Finish About ten Linux commands). Each Linux commands we need to write about ten examples to test and record.
  - [Example](./labs/2019-02-08-Linux-Commands-System-call.md)
  - Monitor the system by add module in the Linux kernel(Lavaniyaa). Some links: [Raspbian kernel source code](https://github.com/raspberrypi/linux), [ktrace](https://github.com/PANZERBARON/ktrace). Building and Configuring the kernel. [Link1](https://www.raspberrypi.org/documentation/linux/kernel/configuring.md), [Link2](https://www.raspberrypi.org/documentation/linux/kernel/building.md)
- [X] Write the document to introduce the application framework and how to use the application. [Document](https://nsslabcuus.github.io/dochub/virus_analyze/2019-02-08-Introduce-Application.html)

**Next Week Todo**

- Collect the 76 Linux Commands system call in the Raspberry Pi. (Raspbian OS)
- Discuss with Hongda and Lavaniyaa about how to use the command and system call data to get the mapping.
- Application
  - ~~Add the code to deal with the `if` Node or `while` Node. [Done]~~
  - Build the bash parser module to the main application.
  - ~~Fix a bug about the "All commans in the code" [Done]~~
  - ~~Update the command class form and add a link in the website[Done]~~

-----------

## Last week

**02/11/2019 - 02/15/2019**

- Collect the 79 Linux Commands system call in the Raspberry Pi. (Raspbian OS) (Done 50%, I have collected almost 40 Linux Commands system call logs in Raspbian OS.) [Documents Link](https://nsslabcuus.github.io/dochub/virus_analyze/2019-01-29-Linux-Commans-Classfiy.html)
- Application (Fixed some bugs.):
  - Add the code to deal with the if Node or while Node. (100% Done. We have update the code to Github master branch.)
  - Fix a bug about the "All commands in the code.". (100% Done.)

**02/18/2019 - 02/22/2019**

- Discuss with Hongda and Lavaniyaa about how to use the command and system call data to get the mapping. (100% Done.) We changed some work part in the team. Now, there are two parts we need to focus.
  - Build the normal bash script dataset. In addition, Compare with the normal bash script graph with the malware bash script graph. (Commands or system call sequences.- We need to discuss more about this.)
  - Map the commands to the system call. (Lavaniyaa)
- Collect the 79 Linux Commands system call in the Raspberry Pi. (Raspbian OS) (The next work move to Lavaniyaa. The [Code Link](https://github.com/guozetang/IoT-Malware-Dataset-App/tree/master/systemcall))
- Application:
  - Build the bash parser module to the main application.

## Next Week TODO List

- [ ] Collect the normal Linux bash scripts from the SHELLdorado website. (Plan: 100% Done. And the normal bash script website link:  Website Link)
  - Download files from this website.
  - Write a python script to extract bash script file from the downloaded files.
  - Test these bash scripts by the bash script parser module. 
- [ ] Build the normal bash scripts dataset. (Plan: 50% Done. We need to use the normal bash script to generate the normal node file and graph files. After then, we use this information to build our normal bash scripts dataset.)
- [ ] Write a python script to split the bash scripts files which have the cd pattern in the code. (Plan: 100% Done. We want to analyze the different line in these file by comparing each line.) [Example Script](https://github.com/guozetang/IoT-Malware-Dataset-App/blob/master/bashData/allscripts/VirusShare_001804c2ee9a44b3e8e8d0e73d516f7e.sh)

Some websites about the nomal bash scripts:
- [UNIX shell scripting resource](http://www.shelldorado.com/links/)
- [x] [Linux shell scripts](http://www.comp.eonworks.com/scripts/scripts.html)
- [x] http://www.comp.eonworks.com/scripts/scripts.html
- [x] http://cgd.sdf-eu.org/a_scripts.html
- [x] https://www.cs.nmsu.edu/~tomohara/useful-scripts/
- [x] https://github.com/pixelb/scripts - set of utilities written in shell scripts.


**01/21/2019 - 01/25/2019**

1.  Optimized the regular expression to remove the commands which are not the Linux commands in our dataset. (Give a result about how many Linux command used in all the bash scripts exclude the other filename or some commands which are not Linux commands.) [Linux Commands]
2.  Changed the application code to help Fei Ding to merge the binary commands name, and use the same names to instead of all the binary commands to reduce the graph node size.
3.  Built the bach command classification module in the application. [Classification](https://nsslabcuus.github.io/dochub/virus_analyze/2019-01-29-Linux-Commans-Classfiy.html)

--------

**01/28/2019 - 02/01/2019**

1. Build the script data module which can filter the download file name and remove this information in our graph to reduce complexity for the control flow graph. **Work with Hongda** [API Document](https://nsslabcuus.github.io/dochub/virus_analyze/2019-01-29-Application-API.html)
    * Commands Classify: Linux Command, Binary FIle, Unknown Commands, Building Commands(No System Call) 
    * Questions
        * Move the network commands to different small parts.
        * How to classify the Linux Commands and the Building Commands ([Linux Commands Line Introduce](https://nsslabcuus.github.io/dochub/res/TLCL-19.01.pdf))
        * Check whether there are some unknown commands in our bash scripts.
2. Generate 100 dot file as the Feiding's project input to test.
3. Build development documents share website. [NSS Lab Development Documents](https://nsslabcuus.github.io/dochub/)
**Relative Link**
    * [Linux Commands Line Introduce](https://nsslabcuus.github.io/dochub/res/TLCL-19.01.pdf)



## Next Week TODO List

- ~~[ ] Monitor Development: Map the commands in the bash scripts to the IoT driver system call. (Partner: 
Lavaniyaa)~~

**Application**

1. Build the bash parser module to the main application
2. Integrate Fei Ding's part in the application (Maybe)
3. Generate 1.000 dot file as the Feiding's project input
4. Collect the feedback and change the script data module about remove the Download Binary file name.
](# Weekly Work Record

**02/11/2019 - 02/15/2019**

- Collect the 76 Linux Commands system call in the Raspberry Pi. (Raspbian OS) (Done 50%, I have collected almost 40 Linux Commands system call logs in Raspbian OS.)
- Application:
  - Add the code to deal with the if Node or while Node. (100% Done. We have updated the code to GitHub master branch.)
  - Fix a bug about the "All commands in the code.". (100% Done.)

**02/18/2019 - 02/22/2019**

- Discuss with Hongda and Lavaniyaa about how to use the command and system call data to get the mapping. (100% Done.) Change some work partly in the team. Now, there are two parts we need to focus on.
  - Build the normal bash script dataset. In addition, Compare with the normal bash script graph with the malware bash script graph. (Commands or system call sequences.)
  - Map the commands to the system call.
- Collect the 76 Linux Commands system call in the Raspberry Pi. (Raspbian OS) (The next work move to Lavaniyaa. The [Code Link](https://github.com/guozetang/IoT-Malware-Dataset-App/tree/master/systemcall))
- Application:
  - Build the bash parser module to the main application.

## Next Week TODO List

- [ ] Collect the normal Linux bash scripts from the SHELLdorado website. (Plan: 100% Done. And the normal bash script website link:  Website Link)
  - download files from this website.
  - Write a python script to extract bash script file from the downloaded files.
  - Test these bash scripts by the bash script parser module. 
- [ ] Build the normal bash scripts dataset. (Plan: 50% Done. We need to use the normal bash script to generate the normal node file and graph files. After then, we use this information to build our normal bash scripts dataset.)
- [ ] Write a python script to split the bash scripts files which have the cd pattern in the code. (Plan: 100% Done. We want to analyze the different line in these file by comparing each line.)

Information about the nomal bash scripts:
- [UNIX shell scripting resource](http://www.shelldorado.com/links/)
- [Linux shell scripts](http://www.comp.eonworks.com/scripts/scripts.html)
- http://www.comp.eonworks.com/scripts/scripts.html
- http://cgd.sdf-eu.org/a_scripts.html
- https://www.cs.nmsu.edu/~tomohara/useful-scripts/
- https://github.com/pixelb/scripts - set of utilities written in shell scripts.

-----------

## Last week

**02/04/2019 - 02/08/2019**
**This Week TODO List**

- [ ] Build the bash parser module to the main application(---Move to next week)
- [ ] ~~Integrate Fei Ding's part in the application (Maybe---Waiting for Hongda rebuild it)~~
- [x] Generate 1.000 dot file as the Feiding's project input (Generate 1750 dot files for test)
  - Remove the binary file name in the bash scripts files.
  - Deal with the network commands for `wget, ftp, tftp, curl` using a different style. (Move the network commands to small parts.)
- [x] Collect the feedback and change the script data module about remove the Download Binary file name. (Add the assignment)
  - Deal with the unknown commands about the `assignment`
  - Add the property field and search function in the table. (Change the database). We can use it to analyze the bash scripts in our dataset.
  - Add the export function in the application, we can use it to export the search result in our application.
  - Reduce the Linux commands which used in all the bash scripts by removing the binary file name.
  - Add the code to record commands ===>> bash scripts map.
- [x] Monitor development: Map the commands in the bash scripts to the IoT driver system call. (Partner: Lavaniyaa. )
  - Using a `strace` tool to trace the system call in the Raspbian OS (Finish About ten Linux commands). Each Linux commands we need to write about ten examples to test and record.
  - [Example](./labs/2019-02-08-Linux-Commands-System-call.md)
  - Monitor the system by add module in the Linux kernel(Lavaniyaa). Some links: [Raspbian kernel source code](https://github.com/raspberrypi/linux), [ktrace](https://github.com/PANZERBARON/ktrace). Building and Configuring the kernel. [Link1](https://www.raspberrypi.org/documentation/linux/kernel/configuring.md), [Link2](https://www.raspberrypi.org/documentation/linux/kernel/building.md)
- [X] Write the document to introduce the application framework and how to use the application. [Document](https://nsslabcuus.github.io/dochub/virus_analyze/2019-02-08-Introduce-Application.html)

**Next Week Todo**

- Collect the 76 Linux Commands system call in the Raspberry Pi. (Raspbian OS)
- Discuss with Hongda and Lavaniyaa about how to use the command and system call data to get the mapping.
- Application
  - ~~Add the code to deal with the `if` Node or `while` Node. [Done]~~
  - Build the bash parser module to the main application.
  - ~~Fix a bug about the "All commans in the code" [Done]~~
  - ~~Update the command class form and add a link in the website[Done]~~

-----------
## Last week

**01/21/2019 - 01/25/2019**

1.  Optimized the regular expression to remove the commands which are not the Linux commands in our dataset. (Give a result about how many Linux command used in all the bash scripts exclude the other filename or some commands which are not Linux commands.) [Linux Commands]
2.  Changed the application code to help Fei Ding to merge the binary commands name, and use the same names to instead of all the binary commands to reduce the graph node size.
3.  Built the bach command classification module in the application. [Classification](https://nsslabcuus.github.io/dochub/virus_analyze/2019-01-29-Linux-Commans-Classfiy.html)

--------

**01/28/2019 - 02/01/2019**

1. Build the script data module which can filter the download file name and remove this information in our graph to reduce complexity for the control flow graph. **Work with Hongda** [API Document](https://nsslabcuus.github.io/dochub/virus_analyze/2019-01-29-Application-API.html)
    * Commands Classify: Linux Command, Binary FIle, Unknown Commands, Building Commands(No System Call) 
    * Questions
        * Move the network commands to different small parts.
        * How to classify the Linux Commands and the Building Commands ([Linux Commands Line Introduce](https://nsslabcuus.github.io/dochub/res/TLCL-19.01.pdf))
        * Check whether there are some unknown commands in our bash scripts.
2. Generate 100 dot file as the Feiding's project input to test.
3. Build development documents share website. [NSS Lab Development Documents](https://nsslabcuus.github.io/dochub/)
**Relative Link**
    * [Linux Commands Line Introduce](https://nsslabcuus.github.io/dochub/res/TLCL-19.01.pdf)



## Next Week TODO List

- ~~[ ] Monitor Development: Map the commands in the bash scripts to the IoT driver system call. (Partner: 
Lavaniyaa)~~

**Application**

1. Build the bash parser module to the main application
2. Integrate Fei Ding's part in the application (Maybe)
3. Generate 1.000 dot file as the Feiding's project input
4. Collect the feedback and change the script data module about remove the Download Binary file name.
)](# Weekly Work Record

**02/11/2019 - 02/15/2019**

- Collect the 79 Linux Commands system call in the Raspberry Pi. (Raspbian OS) (Done 50%, I have collected almost 40 Linux Commands system call logs in Raspbian OS.) [Documents Link](https://nsslabcuus.github.io/dochub/virus_analyze/2019-01-29-Linux-Commans-Classfiy.html)
- Application (Fixed some bugs.):
  - Add the code to deal with the if Node or while Node. (100% Done. We have updated the code to GitHub master branch.)
  - Fix a bug about the "All commands in the code.". (100% Done.)

**02/18/2019 - 02/22/2019**

- Discuss with Hongda and Lavaniyaa about how to use the command and system call data to get the mapping. (100% Done.) We changed some work partly in the team. Now, there are two parts we need to focus on.
  - Build the normal bash script dataset. In addition, Compare with the normal bash script graph with the malware bash script graph. (Commands or system call sequences.- We need to discuss more this.)
  - Map the commands to the system call. (Lavaniyaa)
- Collect the 76 Linux Commands system call in the Raspberry Pi. (Raspbian OS) (The next work move to Lavaniyaa. The [Code Link](https://github.com/guozetang/IoT-Malware-Dataset-App/tree/master/systemcall))
- Application:
  - Build the bash parser module to the main application.

## Next Week TODO List

- [ ] Collect the normal Linux bash scripts from the SHELLdorado website. (Plan: 100% Done. And the normal bash script website link:  Website Link)
  - Download files from this website.
  - Write a python script to extract bash script file from the downloaded files.
  - Test these bash scripts by the bash script parser module. 
- [ ] Build the normal bash scripts dataset. (Plan: 50% Done. We need to use the normal bash script to generate the normal node file and graph files. After then, we use this information to build our normal bash scripts dataset.)
- [ ] Write a python script to split the bash scripts files which have the cd pattern in the code. (Plan: 100% Done. We want to analyze the different line in these file by comparing each line.) [Example Script](https://github.com/guozetang/IoT-Malware-Dataset-App/blob/master/bashData/allscripts/VirusShare_001804c2ee9a44b3e8e8d0e73d516f7e.sh)

Some websites about the nomal bash scripts:
- [UNIX shell scripting resource](http://www.shelldorado.com/links/)
- [Linux shell scripts](http://www.comp.eonworks.com/scripts/scripts.html)
- http://www.comp.eonworks.com/scripts/scripts.html
- http://cgd.sdf-eu.org/a_scripts.html
- https://www.cs.nmsu.edu/~tomohara/useful-scripts/
- https://github.com/pixelb/scripts - set of utilities written in shell scripts.

-----------
## Last week

**02/04/2019 - 02/08/2019**
**This Week TODO List**

- [ ] Build the bash parser module to the main application(---Move to next week)
- [ ] ~~Integrate Fei Ding's part in the application (Maybe---Waiting for Hongda rebuild it)~~
- [x] Generate 1.000 dot file as the Feiding's project input (Generate 1750 dot files for test)
  - Remove the binary file name in the bash scripts files.
  - Deal with the network commands for `wget, ftp, tftp, curl` using a different style. (Move the network commands to small parts.)
- [x] Collect the feedback and change the script data module about remove the Download Binary file name. (Add the assignment)
  - Deal with the unknown commands about the `assignment`
  - Add the property field and search function in the table. (Change the database). We can use it to analyze the bash scripts in our dataset.
  - Add the export function in the application, we can use it to export the search result in our application.
  - Reduce the Linux commands which used in all the bash scripts by removing the binary file name.
  - Add the code to record commands ===>> bash scripts map.
- [x] Monitor development: Map the commands in the bash scripts to the IoT driver system call. (Partner: Lavaniyaa. )
  - Using a `strace` tool to trace the system call in the Raspbian OS (Finish About ten Linux commands). Each Linux commands we need to write about ten examples to test and record.
  - [Example](./labs/2019-02-08-Linux-Commands-System-call.md)
  - Monitor the system by add module in the Linux kernel(Lavaniyaa). Some links: [Raspbian kernel source code](https://github.com/raspberrypi/linux), [ktrace](https://github.com/PANZERBARON/ktrace). Building and Configuring the kernel. [Link1](https://www.raspberrypi.org/documentation/linux/kernel/configuring.md), [Link2](https://www.raspberrypi.org/documentation/linux/kernel/building.md)
- [X] Write the document to introduce the application framework and how to use the application. [Document](https://nsslabcuus.github.io/dochub/virus_analyze/2019-02-08-Introduce-Application.html)

**Next Week Todo**

- Collect the 76 Linux Commands system call in the Raspberry Pi. (Raspbian OS)
- Discuss with Hongda and Lavaniyaa about how to use the command and system call data to get the mapping.
- Application
  - ~~Add the code to deal with the `if` Node or `while` Node. [Done]~~
  - Build the bash parser module to the main application.
  - ~~Fix a bug about the "All commands in the code" [Done]~~
  - ~~Update the command class form and add a link in the website[Done]~~

-----------
## Last week

**01/21/2019 - 01/25/2019**

1.  Optimized the regular expression to remove the commands which are not the Linux commands in our dataset. (Give a result about how many Linux command used in all the bash scripts exclude the other filename or some commands which are not Linux commands.) [Linux Commands]
2.  Changed the application code to help Fei Ding to merge the binary commands name, and use the same names to instead of all the binary commands to reduce the graph node size.
3.  Built the bach command classification module in the application. [Classification](https://nsslabcuus.github.io/dochub/virus_analyze/2019-01-29-Linux-Commans-Classfiy.html)

--------

**01/28/2019 - 02/01/2019**

1. Build the script data module which can filter the download file name and remove this information in our graph to reduce complexity for the control flow graph. **Work with Hongda** [API Document](https://nsslabcuus.github.io/dochub/virus_analyze/2019-01-29-Application-API.html)
    * Commands Classify: Linux Command, Binary FIle, Unknown Commands, Building Commands(No System Call) 
    * Questions
        * Move the network commands to different small parts.
        * How to classify the Linux Commands and the Building Commands ([Linux Commands Line Introduce](https://nsslabcuus.github.io/dochub/res/TLCL-19.01.pdf))
        * Check whether there are some unknown commands in our bash scripts.
2. Generate 100 dot file as the Feiding's project input to test.
3. Build development documents share website. [NSS Lab Development Documents](https://nsslabcuus.github.io/dochub/)
**Relative Link**
    * [Linux Commands Line Introduce](https://nsslabcuus.github.io/dochub/res/TLCL-19.01.pdf)



## Next Week TODO List

- ~~[ ] Monitor Development: Map the commands in the bash scripts to the IoT driver system call. (Partner: 
Lavaniyaa)~~

**Application**

1. Build the bash parser module to the main application
2. Integrate Fei Ding's part in the application (Maybe)
3. Generate 1.000 dot file as the Feiding's project input
4. Collect the feedback and change the script data module about remove the Download Binary file name.
](# Weekly Work Record

**02/11/2019 - 02/15/2019**

- Collect the 76 Linux Commands system call in the Raspberry Pi. (Raspbian OS) (Done 50%, I have collected almost 40 Linux Commands system call logs in Raspbian OS.)
- Application:
  - Add the code to deal with the if Node or while Node. (100% Done. We have updated the code to GitHub master branch.)
  - Fix a bug about the "All commands in the code.". (100% Done.)

**02/18/2019 - 02/22/2019**

- Discuss with Hongda and Lavaniyaa about how to use the command and system call data to get the mapping. (100% Done.) Change some work partly on the team. Now, there are two parts we need to focus on.
  - Build the normal bash script dataset. In addition, Compare with the normal bash script graph with the malware bash script graph. (Commands or system call sequences.)
  - Map the commands to the system call.
- Collect the 76 Linux Commands system call in the Raspberry Pi. (Raspbian OS) (The next work move to Lavaniyaa. The [Code Link](https://github.com/guozetang/IoT-Malware-Dataset-App/tree/master/systemcall))
- Application:
  - Build the bash parser module to the main application.

## Next Week TODO List

- [ ] Collect the normal Linux bash scripts from the SHELLdorado website. (Plan: 100% Done. And the normal bash script website link:  Website Link)
  - download files from this website.
  - Write a python script to extract bash script file from the downloaded files.
  - Test these bash scripts by the bash script parser module. 
- [ ] Build the normal bash scripts dataset. (Plan: 50% Done. We need to use the normal bash script to generate the normal node file and graph files. After then, we use this information to build our normal bash scripts dataset.)
- [ ] Write a python script to split the bash scripts files which have the cd pattern in the code. (Plan: 100% Done. We want to analyze the different line in these file by comparing each line.)

Information about the nomal bash scripts:
- [UNIX shell scripting resource](http://www.shelldorado.com/links/)
- [Linux shell scripts](http://www.comp.eonworks.com/scripts/scripts.html)
- http://www.comp.eonworks.com/scripts/scripts.html
- http://cgd.sdf-eu.org/a_scripts.html
- https://www.cs.nmsu.edu/~tomohara/useful-scripts/
- https://github.com/pixelb/scripts - set of utilities written in shell scripts.

-----------
## Last week

**02/04/2019 - 02/08/2019**
**This Week TODO List**

- [ ] Build the bash parser module to the main application(---Move to next week)
- [ ] ~~Integrate Fei Ding's part in the application (Maybe---Waiting for Hongda rebuild it)~~
- [x] Generate 1.000 dot file as the Feiding's project input (Generate 1750 dot files for test)
  - Remove the binary file name in the bash scripts files.
  - Deal with the network commands for `wget, ftp, tftp, curl` using a different style. (Move the network commands to small parts.)
- [x] Collect the feedback and change the script data module about remove the Download Binary file name. (Add the assignment)
  - Deal with the unknown commands about the `assignment`
  - Add the property field and search function in the table. (Change the database). We can use it to analyze the bash scripts in our dataset.
  - Add the export function in the application, we can use it to export the search result in our application.
  - Reduce the Linux commands which used in all the bash scripts by removing the binary file name.
  - Add the code to record commands ===>> bash scripts map.
- [x] Monitor development: Map the commands in the bash scripts to the IoT driver system call. (Partner: Lavaniyaa. )
  - Using a `strace` tool to trace the system call in the Raspbian OS (Finish About ten Linux commands). Each Linux commands we need to write about ten examples to test and record.
  - [Example](./labs/2019-02-08-Linux-Commands-System-call.md)
  - Monitor the system by add module in the Linux kernel(Lavaniyaa). Some links: [Raspbian kernel source code](https://github.com/raspberrypi/linux), [ktrace](https://github.com/PANZERBARON/ktrace). Building and Configuring the kernel. [Link1](https://www.raspberrypi.org/documentation/linux/kernel/configuring.md), [Link2](https://www.raspberrypi.org/documentation/linux/kernel/building.md)
- [X] Write the document to introduce the application framework and how to use the application. [Document](https://nsslabcuus.github.io/dochub/virus_analyze/2019-02-08-Introduce-Application.html)

**Next Week Todo**

- Collect the 76 Linux Commands system call in the Raspberry Pi. (Raspbian OS)
- Discuss with Hongda and Lavaniyaa about how to use the command and system call data to get the mapping.
- Application
  - ~~Add the code to deal with the `if` Node or `while` Node. [Done]~~
  - Build the bash parser module to the main application.
  - ~~Fix a bug about the "All commands in the code" [Done]~~
  - ~~Update the command class form and add a link in the website[Done]~~

-----------
## Last week

**01/21/2019 - 01/25/2019**

1.  Optimized the regular expression to remove the commands which are not the Linux commands in our dataset. (Give a result about how many Linux command used in all the bash scripts exclude the other filename or some commands which are not Linux commands.) [Linux Commands]
2.  Changed the application code to help Fei Ding to merge the binary commands name, and use the same names to instead of all the binary commands to reduce the graph node size.
3.  Built the bach command classification module in the application. [Classification](https://nsslabcuus.github.io/dochub/virus_analyze/2019-01-29-Linux-Commans-Classfiy.html)

--------

**01/28/2019 - 02/01/2019**

1. Build the script data module which can filter the download file name and remove this information in our graph to reduce complexity for the control flow graph. **Work with Hongda** [API Document](https://nsslabcuus.github.io/dochub/virus_analyze/2019-01-29-Application-API.html)
    * Commands Classify: Linux Command, Binary FIle, Unknown Commands, Building Commands(No System Call) 
    * Questions
        * Move the network commands to different small parts.
        * How to classify the Linux Commands and the Building Commands ([Linux Commands Line Introduce](https://nsslabcuus.github.io/dochub/res/TLCL-19.01.pdf))
        * Check whether there are some unknown commands in our bash scripts.
2. Generate 100 dot file as the Feiding's project input to test.
3. Build development documents share website. [NSS Lab Development Documents](https://nsslabcuus.github.io/dochub/)
**Relative Link**
    * [Linux Commands Line Introduce](https://nsslabcuus.github.io/dochub/res/TLCL-19.01.pdf)
