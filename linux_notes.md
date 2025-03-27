# Linux notes

### Why Linux?
- Very lightweight
- Scalable in terms of compute power
- Open-source - very well documented
- Cost effective

Linux is a clone of the Unix operating system.

*Linux does not care about file extensions*  
*Linux is case-sensitive*  

## Helpful Commands
#### Information Commands
`uname` = gives system info  
`pwd` = prints the current working directory  
`cd <dirname>` = changes directory to the specified directory  
`history` = shows all commands run in this shell session  
`history -c` = clears the command history for this shell session  
`!<num>` = runs the command at the specified number in the command history  
`whoami` = prints the current logged in user  
`man <command>` = prints the manual for the command to see use cases and flags  
`cat <filepath>` = prints all of the information within the specified folder or file  
`ps -p $$` = prints the current shell in use  
`ls` = prints all of the files or folders within the current directory  
`ls -a` = prints all of the files, folders and hidden files and folders within the current directory  
`echo` = prints the text of message on the screen  
`exit` = removes you from root folder or exits virtual machine
`sleep <num>` = puts the terminal to sleep for the specified amount of seconds (useful for waiting on information during a script as processes may happen too quickly)

#### File Commands
`curl <url> --output <filename>` = used for downloading files for data transfer in general  
`wget <url> -O <filename>` = specifically used for downloading files and folders, more efficient than curl  
`file <filename>` = prints the file type e.g JPEG regardless of renaming or alteration of file type manually e.g making it a .txt  
`mv <filename> <new-filename>` = can be used to rename files  
`mv <filename> <dirname>` = moves a file to the specified directory  
`cp <filename> <copy-filename>` = copy file into a new file  
`rm <filename>` = remove / delete the file  
`mkdir <dirname>` = creates a new directory  
`rm -r <dirname>` = deletes a directory (-r flag has to be used to delete any files within the folder, otherwise it will not let you delete it)  
`touch <filename>` = creates a new blank file  
`nano <filename>` = brings up a text editor within the terminal  
`head -<num> <filename>` = prints the number of lines from the top of the file  
`tail -<num> <filename>` = prints the number of lines from the bottom of the file  
`nl <filename>` = prints the line numbers in the file  
`cat <filename> | grep <word>` = prints the lines with the specified word 

#### Installation Commands
`apt install <package>` = will install the specified package if it has access to it  
`tree` = prints the file directory as a tree for better visualisation (needs installing as a package)  
`sudo <command>` = will run the command as a super user  
`sudo apt update -y` = will connect the kernel to the internet and download commonly used packages but will not install them. The -y automatically says yes to any yes/no prompts that may occur  
(Commonly used when logging into a VM to verify it has access to the internet)  
`sudo apt upgrade -y` = installs the updated packages that have been downloaded. Not safe as can cause problems  
`sudo su <name>` = logs in as a super user if given no name argument, or a different user if given a name  

#### Nginx Commands
`sudo systemctl status nginx` = prints the status of the nginx web service  
`sudo systemctl start nginx` = starts the nginx web service  
`sudo systemctl stop nginx` = stops the nginx web service  
`sudo systemctl restart nginx` = restarts the web service  
`sudo systemctl enable nginx` = allows nginx to be started on startup
  
## Research
#### How can we set a variable in BASH?
A variable can be set by assigning a value to its reference e.g. `STR="Hello World!"`

#### What are environment variables?
Special (global) variables often used to pass information between commands and subprocesses, or to control the shells behaviour. They contain information about your login session and stored for the system shell to use when executing commands.

#### How can we set one?
`export <variable-name>=value`

#### How can you make an environment variable persistent?
By setting them in your shell configuration file e.g. ~/.bashrc

Navigate to __~/.bashrc__ before setting the variable using the __export__ keyword  
`export <variable-name>=value`

Need to start a new session or manually run the configuration file again for the environment variable to show up. This can be done by running `source .bashrc`.

#### What is a process?
An instance of a program that is currently being executed. Each process is given an ID, known as a PID. Only one process can run per core of the CPU, it will just quickly switch between multiple processes.

#### How can we see running processes?
You can view all running processes using the `ps` command, or `top` to get an ongoing, dynamic view of active processes

#### What are child processes?
A process that is created by another process (know as the parent process). When a process starts another process, the new one is called the child process.

#### How can you run a process in the background, rather than the foreground?
Adding an __&__ symbol to the end of the command will run it in the background
e.g. `<command> &`

#### How can you end a process?
There are a few methods:
1. Using `kill`
   - You can terminate the process by using this command with the Process ID (PID) e.g. `kill <PID>`
   - Most gentle way of killing a process uses `kill -1 <PID>` as -1 is the SigKill flag for gently stopping the process
   - To kill a process that has child processes, use `kill -15 <PID>`. This will kill the child processes before the parent process
   - Most aggressive way of killing processes, use `kill -9 <PID>`. This will abruptly kill the process. __Do not use for sensitive processes__.
   - To find the PID, you can use ps, top or pgrep e.g. `ps aux | grep <name>` or `pgrep <name>`
2. Using `killall`
   - Terminates the process by its name instead of PID e.g. `killall <name>`
3. Using `pkill`
   - Terminates the process by its name, but is more flexible than `killall` as it allows sending signals to process based on their name, attributes or other criteria e.g. `pkill <name>` 

#### Explain the Linux permission system to me
Each file or directory has three types of permissions:
- __Read (r)__: Permission to view the contents of the file or list the contents of a directory
- __Write (w)__: Permission to modify the contents of the file or add/remove files in the directory
- __Execute (x)__: Permission to run the file as a program or script, or to enter the directory

#### Explain the shorthand permission system (numbers)
Each permission has a numeric value assigned to it:
- __Read (r) = 4__
- __Write (w) = 2__
- __Execute (x) = 1__

These values are represented as a three-digit value for the specific file permission (e.g. 744) and are called __octal values__.
For example, a file might have read, write, and execute permissions for its owner, and only read permission for all other users. That looks like this:

- Owner: rwx = 4+2+1 = 7
- Group: r-- = 4+0+0 = 4
- Others: r-- = 4+0+0 = 4

The results produce the three-digit value 744.

#### How can you change the permissions on a file?
To change the permissions on a file, you can use the `chmod` command, which stands for "change mode".

Changing permissions using numeric notation can be done using `chmod <numeric_permissions> <file>`  

e.g. `chmod 754 <file>` sets the permissions as:
  - Owner: rwx (read, write, execute) = 7
  - Group: r-x (read, execute) = 5
  - Others: r-- (read) = 4
