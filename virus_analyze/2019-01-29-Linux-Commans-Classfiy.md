### Linux commands classfy

I have counted all of the commands which are the linux commands in our bash malware scripts. There are only 92 Linux commands used in these 1784 bash scripts.

There are two links for the result.

- [commands_linux.json](https |  //github.com/guozetang/IoT-Malware-Dataset-App/blob/master/commands_linux.json)  
- [commands_linux_sorted.txt](https |  //github.com/guozetang/IoT-Malware-Dataset-App/blob/master/commands_linux_sorted.txt)

The second one sorted by the count number. In addition, I have put the commands table as followed.

| No. | Linux Command | Frequency | Classification          |
| --- | ------------- | --------- |
| 0   | cd            | 109306    | directories             |
| 1   | chmod         | 22237     | file permissions        |
| 2   | rm            | 15666     | file operations         |
| 3   | cat           | 6767      | file examination        |
| 4   | ftp           | 830       | network                 |
| 5   | tftp          | 783       | network                 |
| 6   | ulimit        | 515       | miscellaneous           |
| 7   | cp            | 507       | file operations         |
| 8   | echo          | 244       | shell scripting         |
| 9   | grep          | 157       | searching and sorting   |
| 10  | pkill         | 103       | process management      |
| 11  | awk           | 69        | Text processing         |
| 12  | sudo          | 65        | users and groups        |
| 13  | killall       | 56        | process management      |
| 14  | xargs         | 53        | searching and sorting   |
| 15  | ps            | 53        | process management      |
| 16  | sleep         | 42        | miscellaneous           |
| 17  | exit          | 29        | basic shell             |
| 18  | nohup         | 25        | process management      |
| 19  | service       | 24        | Others                  |
| 20  | ssh           | 23        | network                 |
| 21  | mktemp        | 16        | filesystem              |
| 22  | sed           | 15        | regular expressions     |
| 23  | set           | 14        | shell scripting         |
| 24  | lynx          | 13        | network                 |
| 25  | cut           | 13        | Shell Programming       |
| 26  | apt-get       | 13        | Others                  |
| 27  | wc            | 12        | file examination        |
| 28  | mkdir         | 10        | directories             |
| 29  | tail          | 9         | file examination        |
| 30  | declare       | 9         | Others                  |
| 31  | basename      | 9         | filesystem              |
| 32  | pstree        | 8         | process management      |
| 33  | lsof          | 8         | filesystem              |
| 34  | read          | 7         | shell scripting         |
| 35  | fg            | 7         | process management      |
| 36  | as            | 7         | Others                  |
| 37  | yum           | 6         | Others                  |
| 38  | tar           | 6         | compression             |
| 39  | crontab       | 6         | miscellaneous           |
| 40  | perl          | 5         | programming             |
| 41  | usermod       | 4         | Others                  |
| 42  | sort          | 4         | searching and sorting   |
| 43  | mv            | 4         | file operations         |
| 44  | head          | 4         | file examination        |
| 45  | uname         | 3         | system information      |
| 46  | touch         | 3         | file operations         |
| 47  | ls            | 3         | directories             |
| 48  | find          | 3         | searching and sorting   |
| 49  | chattr        | 3         | Others                  |
| 50  | which         | 2         | searching and sorting   |
| 51  | userdel       | 2         | Others                  |
| 52  | unset         | 2         | shell scripting         |
| 53  | umask         | 2         | file permissions        |
| 54  | sysctl        | 2         | Others                  |
| 55  | stat          | 2         | Others                  |
| 56  | ping          | 2         | network                 |
| 57  | netstat       | 2         | network                 |
| 58  | lsb_release   | 2         | Others                  |
| 59  | kill          | 2         | process management      |
| 60  | ip            | 2         | network                 |
| 61  | ifconfig      | 2         | network                 |
| 62  | history       | 2         | basic shell             |
| 63  | gunzip        | 2         | compression             |
| 64  | export        | 2         | shell scripting         |
| 65  | date          | 2         | system information      |
| 66  | whoami        | 1         | users and groups        |
| 67  | whoami        | 1         | users and groups        |
| 68  | wget          | 1         | network                 |
| 69  | w             | 1         | multi-user environments |
| 70  | uniq          | 1         | searching and sorting   |
| 71  | trap          | 1         | process management      |
| 72  | tr            | 1         | Text processing         |
| 73  | test          | 1         | Others                  |
| 74  | su            | 1         | users and groups        |
| 75  | sshd          | 1         | network                 |
| 76  | sh            | 1         | Shell programming       |
| 77  | nc            | 1         | network                 |
| 78  | man           | 1         | Others                  |
| 79  | make          | 1         | build management        |
| 80  | iptables      | 1         | network                 |
| 81  | id            | 1         | Others                  |
| 82  | id            | 1         | Others                  |
| 83  | gzip          | 1         | compression             |
| 84  | git           | 1         | build management        |
| 85  | expr          | 1         | Others                  |
| 86  | egrep         | 1         | regular expressions     |
| 87  | dirname       | 1         | filesystem              |
| 88  | curl          | 1         | network                 |
| 89  | clear         | 1         | basic shell             |
| 90  | chown         | 1         | file permissions        |
| 91  | arp           | 1         | network                 |


**Reference Linking**

* [Bash Shell Reference (manual)](https |  //courses.cs.washington.edu/courses/cse390a/14au/bash.html)

----------

### How many commands classification used in our project.

| No. | Classification                     | Commands                                                                                                     |
| --- | ---------------------------------- | ------------------------------------------------------------------------------------------------------------ |
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