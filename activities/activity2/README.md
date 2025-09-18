# Activity: Shell games

Create a markdown file with your team's answers, and upload it to Canvas for Activity 2.

### A. Shell and the `bc` calculator

The `bc` tool on Unix/Linux systems is an arbitrary precision calculator. Here's a shell script to leverage it to add up numbers from the user:

```bash
#!/bin/bash

sum=0

echo "Enter numbers to calculate their sum (Ctrl+D to finish):"

while read -p "Enter a number: " num; do
    # Check if the input is a valid number
    if [[ "$num" =~ ^[+-]?[0-9]+(\.[0-9]+)?$ ]]; then
        sum=$(bc <<< "$sum + $num")
    else
        echo "Invalid input. Please enter a valid number."
    fi
done

echo "The sum of the numbers is: $sum"
```



The `<<<` allows you to pass a string as input to a command, most often used as `stdin`.

The `=~` comparison operator , which means "matches pattern", is used to test whether the input is a properly-formatted number. 

---

Now, **working in your group (perhaps one person sharing screen)**, answer the following. Add your group answers to a markdown file (`activity2.md`) and upload it to canvas for this activity.

1. What does that pattern mean?

2. Test the shell script to see if it works. Can you break it?

3. When the user enters CTRL-D, the final message comes out on the last prompt line. How could you fix that?

4. While the script works with negative numbers (e.g., `-3`) it fails for numbers entered with a leading `+` sign, even though the patter accepts them.  Why does it fail on `+3` ?

5. How would you modify the script to handle subtraction in addition to addition?  That is, the inputs might be: 
   ```bash
   1
   +
   4
   -
   3
   +
   7
   CTRL-D
   The result is: 9
   ```

6. How would you modify the script to display the current total in every prompt?

   

7. Rewrite the script to take ALL the numbers and operations as a single input and display the result. For example:
   ```bash
   ./myscript2 1 + 2 + 3 - 4 + 5 - 3
   The result is: 4
   ```

   Hint: Use the `shift` command (see [bash tips and tricks](https://github.com/CS50DartmouthFA2025/home/blob/main/knowledge/units/bash-tips.md)
<!--   https://github.com/CS50DartmouthWI24/home/blob/main/knowledge/units/bash-tips.md)).-->

8. (HARD!)
Review the following script :
```bash
#!/bin/bash

echo "hello world" | read first second
echo 1 $second $first

echo "hello world" | {
    read first second
    echo 2 $second $first
}
 
echo 3 $second $first

read first second <<< "hello world"
echo $second $first
```

When you run it, you see:

```bash
tmp $ ./tt.sh 
1
2 world hello
3
tmp $  
```

Why are lines 1 and 3 blank? Can you fix it?

***Don't forget that one of you need to upload your group answers to Activity 2 on Canvas.***

# 
