# Linux Answers
1. **Question1:**
   - ls -l displays user privileges while ls -a displays all files including hidden files.
   
2. **Question2:**
   - Using mkdir might fail if the directory already exists or if the user lacks the necessary 
   permissions. To handle such a failure programmatically, you can check for the directory's 
   existence before attempting to create it or use mkdir -p to create the directory and any 
   necessary parent directories while suppressing errors if the directory already exists, then 
   check the exit status ($?) to ensure success.
   
3. **Question3:**
   - cat file1.txt file2.txt > newfile.txt
   
4. **Question4:**
   - touch creates empty files while cat requires user input for file creation

5. **Question5:**
   - instead of writing all the file names we can use wildcards to copy multiple files based on
   pattern matching.
   example: cp /directory1/file?.txt /directory2/
   "?" matches one character.
   instead of mentioning all the files that need to be copied (file1, file2, ...), we can simply
   use wildcards(file?)
   
6. **Question6:**
   -cd ..
   
7. **Question7:**
   -The mv command will overwrite existing file destination. To avoid accidental overwrites, we can
   use "-n" option.
  
8. **Question8:**
   -In scripting, pwd command is used ro retrieve current director. It is used when a script needs
   to refer to files in the same directory.
   
9. **Question9:**
   -'whereis' locates the binary, source, and manual page files for a command.
   'whatis' displays a brief descripion of a command and we use it when we need a quick summary 
   of what a command does.
   'which' shows the full path of the executable that would have been executed when you type 
   the command.
   
10. **Question10**
   - The man command provides concise, reference-style documentation in a linear, sectioned format,
    ideal for quick lookups by experienced users. In contrast, the info command offers more
    detailed, tutorial-style documentation with a hierarchical structure and hypertext navigation,
    making it useful for in-depth learning and exploration.
    
11. **Question11**
    - The grep command searches for a specific pattern in files, and it can be used to search for a
    pattern in all text files within a directory with the command grep 'pattern' *.txt.
    
12. **Question12**
    - The head command outputs the first 10 lines of a file, and the tail command outputs the last
     10 lines; you can customize the number of lines displayed by using the -n option followed by
     the desired number of lines.
     
13. **Question13**
    - The tac command can be useful for viewing log files from newest to oldest entries in text
    processing or data analysis tasks. For example, using tac logfile.txt allows you to quickly see
    the most recent log entries at the top.
    
14. **Question14**
    - The echo command in scripting is used to display text or variables to the terminal or another
    output stream. It can be used to display static content, such as echo "Hello, World!", or
    dynamic content, such as echo "The current directory is $(pwd)".
    
15. **Question15**
    - The df command provides information about disk space usage on mounted filesystems, including
    total space, used space, available space, and usage percentage. This information is useful for
    system administrators to monitor disk usage, prevent disk space issues, and manage storage 
    resources effectively.
    
16. **Question16**
    - The df command provides an overview of disk space usage for all mounted filesystems, showing 
    total, used, and available space, which helps system administrators monitor overall disk health.
    In contrast, the du command reports disk space usage of specific directories and files, allowing 
    users to identify which parts of the filesystem are consuming the most space and manage storage 
    more granularly.
    
17. **Question17**
   - ps -eo pid,comm,%cpu --sort=-%cpu
   
18. **Question18**
   - An alias,is a shortcut for a longer command or a series of commands, improving command-line
   efficiency by reducing typing effort and minimizing errors.
   
19. **Question19**
   - The uname command provides system information such as the kernel name, version, and
   architecture, which is useful for troubleshooting system issues by identifying the operating
   system and its specific version details.
   
20. **Question20**
  - The sudo command allows users to execute commands with elevated privileges, typically requiring
  their own password, and is useful for granting temporary administrative access for specific tasks,
  like installing software or editing system configurations (sudo apt-get install <package>).
  
  The su command, on the other hand, switches the user to another account, often the root account, 
  after entering the root password, providing full administrative privileges for an entire session 
  or until switching back to the original user (su - to switch to root). It's used when extended 
  administrative access is needed for multiple commands or tasks.
