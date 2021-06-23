#!/bin/bash

#### Instructions

# 1. Create a research directory and copy all system logs along with the `shadow`, `passwd`, and `hosts` files in one long command.

	mkdir ~/research 2> /dev/null && sudo cp -r /var/log/* /etc/{passwd,shadow,hosts} ~/research


# 2. Create a list of all executable files in the home folder and save it to a text file in the research folder with one long command.

	sudo find /home -type f -perm 777 > ~/research/exec_list.txt

# 3. Create a list of the 10 most active processes. The list should only contain the `USER`, `PID`, `%CPU`, `%MEM` and `COMMAND`. Save this list to a text file in your research directory with one long command.

	ps aux --sort -%mem | awk '{print $1, $2, $3, $4, $11}' > ~/research/proc.txt



#### Bonus

#- Create a list of home folders along with user info from the `passwd` file. Only add the user info to your list if the `UID` is greater than 1000.
	ls /home > ~/research/user.txt && cat /etc/passwd | awk -F":" '{if ($3>=1000) print $1}' >> ~/research/user.txt
