# Activity: Hello Linux

Meet your new CS50 team, and Learning Fellow; play with bash pipelines.

## Learning groups

1. Introduce yourself to your new group mates, and to your Learning Fellow.
2. Choose a name for your group.
   It must be suitable as a Git repository name; thus, it should not be too long, and include only the characters `[A-Z][a-z][0-9][-._]`. Keep it PG-rated, too.
3. (One of you) create a private channel in our Slack workspace, using your group name; invite the others.
   Now you can coordinate your group over Slack!
4. Send me a DM to tell me your new group name.
5. Work with your group to solve the following problems.

## 

## Get familiar with bash

These questions assume you completed the system setup of Lab 0.

Now, **working in your group (perhaps one person sharing screen)**, do the following:

1. Connect to `babylon1.thayer.dartmouth.edu` using `ssh`

2. Look around ... how many files can you see?  Are there any "hidden" files?

3. What command displays your current directory? 

4. What command would list every file in your home directory?

5. Is there a directory structure?  What command would display *just the directory structure?*

6. What command would list every file in your home directory and any directories within it?

7. What command would list every file in your home directory and any directories within it, with *all* the details about the file?

8. How would you make a subdirectory named `tmp` in your `cs50-dev` directory ?

9. How would you move into that new `tmp` directory? How would you move back to your move directory?

10. How would the `~` character help in the previous question?

11. How would you make a copy of your `.profile` in a new file named `junk` in that d`tmp` subdirectory?

12. Edit that `junk` file and make changes in a few places. Save and quit the editor.

13. What command would you use to find the differences between the original `.profile` file and the `junk` file you updated?

14. Edit the `junk` file again to have more than 40 lines.

15. Without using an editor, what command would display the `junk` file to the screen?

16. Without using an editor, what command would display the `junk` file to the screen, one screenful at a time?

17. How would you move that `junk` file into your home directory?

18. What does the `touch`command do?  (Hint: use `man touch`) . Use it to create a file named `touched` in your home directory.

19. `ssh` can be really handy. Open another terminal on your laptop and use `ssh` to run a command on `babylon1`:

    ```bash
    $ ssh netid@babylon1.thayer.dartmouth.edu ls
    ```

    and it returns the results. Try it! Do you see the `junk` and `touched` files?

20. Go back to `babylon1` and remove the `junk` and `touched` files. Then try the `ssh` command above to ensure they are gone. Hmmm ... could you have used `ssh` to delete those files?

21. You may be temped to add `.` to your `PATH` variable. Why would you do that? Why would it be dangerous?

22. logout from `babylon1`.

