### Linux commands classfy

I have counted all of the commands which are the Linux commands in our bash malware scripts. There are only 79 Linux commands used in these 1784 bash scripts.

There are two links to the result.

- [commands_linux.json](https://github.com/guozetang/IoT-Malware-Dataset-App/blob/master/commands_linux.json)
- If you want to know which files use the each command, please access the link. [commands to each scripts file](https://github.com/guozetang/IoT-Malware-Dataset-App/blob/master/command_to_file.json)

The second one sorted by the count number. In addition, I have put the commands table as followed.

No. | Linux Command | Frequency | Classification        | Number of Files
----|---------------|-----------|-----------------------|----------------
1   | cd            | 109306    | directories           | 1715
2   | chmod         | 22237     | file permissions      | 1727
3   | rm            | 15666     | file operations       | 1215
4   | wget          | 15491     | network               | 1214
5   | cat           | 6767      | file examination      | 537
6   | tftp          | 6445      | network               | 503
7   | curl          | 2306      | network               | 199
8   | ulimit        | 515       | miscellaneous         | 514
9   | cp            | 507       | file operations       | 503
10  | echo          | 244       | shell scripting       | 33
11  | grep          | 157       | searching and sorting | 19
12  | pkill         | 103       | process management    | 3
13  | awk           | 69        | Text processing       | 12
14  | sudo          | 65        | users and groups      | 12
15  | killall       | 56        | process management    | 5
16  | xargs         | 53        | searching and sorting | 8
17  | ps            | 53        | process management    | 8
18  | sleep         | 42        | miscellaneous         | 20
19  | exit          | 29        | basic shell           | 16
20  | nohup         | 25        | process management    | 10
21  | service       | 24        | Others                | 22
22  | mktemp        | 16        | filesystem            | 4
23  | sed           | 15        | regular expressions   | 9
24  | set           | 14        | shell scripting       | 2
25  | lynx          | 13        | network               | 1
26  | cut           | 13        | Shell Programming     | 5
27  | apt-get       | 13        | Others                | 7
28  | wc            | 12        | file examination      | 6
29  | tr            | 11        | Text processing       | 6
30  | mkdir         | 10        | directories           | 8
31  | tail          | 9         | file examination      | 5
32  | declare       | 9         | Others                | 1
33  | basename      | 9         | filesystem            | 4
34  | lsof          | 8         | filesystem            | 2
35  | read          | 7         | shell scripting       | 3
36  | yum           | 6         | Others                | 4
37  | tar           | 6         | compression           | 6
38  | crontab       | 6         | miscellaneous         | 3
39  | perl          | 5         | programming           | 3
40  | usermod       | 4         | Others                | 4
41  | sort          | 4         | searching and sorting | 4
42  | mv            | 4         | file operations       | 2
43  | head          | 4         | file examination      | 3
44  | whoami        | 3         | users and groups      | 2
45  | uname         | 3         | system information    | 3
46  | touch         | 3         | file operations       | 2
47  | ls            | 3         | directories           | 3
48  | find          | 3         | searching and sorting | 3
49  | chattr        | 3         | Others                | 1
50  | which         | 2         | searching and sorting | 2
51  | unset         | 2         | shell scripting       | 2
52  | umask         | 2         | file permissions      | 2
53  | sysctl        | 2         | Others                | 2
54  | stat          | 2         | Others                | 1
55  | ping          | 2         | network               | 2
56  | netstat       | 2         | network               | 2
57  | lsb_release   | 2         | Others                | 2
58  | kill          | 2         | process management    | 2
59  | ip            | 2         | network               | 2
60  | ifconfig      | 2         | network               | 1
61  | id            | 2         | Others                | 2
62  | history       | 2         | basic shell           | 2
63  | gunzip        | 2         | compression           | 2
64  | export        | 2         | shell scripting       | 1
65  | date          | 2         | system information    | 2
66  | uniq          | 1         | searching and sorting | 1
67  | trap          | 1         | process management    | 1
68  | test          | 1         | Others                | 1
69  | su            | 1         | users and groups      | 1
70  | sh            | 1         | Shell programming     | 1
71  | nc            | 1         | network               | 1
72  | make          | 1         | build management      | 1
73  | git           | 1         | build management      | 1
74  | expr          | 1         | Others                | 1
75  | egrep         | 1         | regular expressions   | 1
76  | dirname       | 1         | filesystem            | 1
77  | clear         | 1         | basic shell           | 1
78  | chown         | 1         | file permissions      | 1
79  | arp           | 1         | network               | 1

**Reference Linking**

* [Bash Shell Reference (manual)](https |  //courses.cs.washington.edu/courses/cse390a/14au/bash.html)

----------

### How many commands classification used in our project.
****
| No. | Classification                     | Commands                                                                                                     |
|-----|------------------------------------|--------------------------------------------------------------------------------------------------------------|
| 1   | Users and Groups                   | su, whoami, sudo                                                                                             |
| 2   | Filesystem                         | dirname, lsof, basename, lsof, mktemp                                                                        |
| 3   | File permissions                   | chown, umask, chmod                                                                                          |
| 4   | File Operations                    | touch, mv, cp, rm                                                                                            |
| 5   | File examination                   | head, tail, wc, cat                                                                                          |
| 6   | Directories                        | ls, mkdir, cd                                                                                                |
| 7   | Compression                        | gzip, gunzip, tar                                                                                            |
| 8   | Build management                   | git, make                                                                                                    |
| 9   | Basic Shell                        | clear, history, exit                                                                                         |
| 10  | Text Processing                    | tr, awk                                                                                                      |
| 11  | Shell Programming                  | sh, cut                                                                                                      |
| 12  | System information                 | data, uname                                                                                                  |
| 13  | Shell scripting(Build-In Commands) | export, unset, read, set, echo                                                                               |
| 14  | Searching and Sorting              | uniq, which, find, sort, xargs, grep                                                                         |
| 15  | Regular expressing                 | sed, perl                                                                                                    |
| 16  | Programming                        | perl                                                                                                         |
| 17  | Process management                 | trap, kill, fg, pstree, nohub, ps, killall, pkill                                                            |
| 18  | Network                            | arp, curl, iptables, nc, sshd, wget, ifconfig, ip, netstat, ping, lynx, ssh, tftp, ftp                       |
| 19  | Multi-User-environments            | w                                                                                                            |
| 20  | Miscellaneous                      | crontab, sleep, ulimit                                                                                       |
| 21  | Ohters                             | expr, id, man, test, lsb_release, stat, sysctl, userdel, chattr, usermod, yum, as, declare, apt-get, service |