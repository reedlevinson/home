# Activity: C programming with structs and pointers

## Goals

1. to use `structs`, arrays of `structs`
2. to better understand use of pointers for allocated memory, and function parameters

## Prepare

1. Log into plink;
2. `git clone` the repository for activity7 located in /cs50/activity7.git into your home directory.
3. `cd` into the resulting new cloned repo.
4. Copy the file `covid-blank.c` to `covid.c`
5. One member of the team share screen and edit that file, filling in BLANKs.
Note: Allocate a large static array for `data`, of size 1000. Use a preprocessor macro directive to do so.
6. Build and run the program with `make test`.

Things to notice:

* a long-ish `main()` function (because of extensive error checking) but good section-header comments to indicate overall flow.
* use of the `file` module 
* A big `struct` for holding each row of data from the csv file
* a `typedef` to define a new type for that struct
* character pointers (for strings) inside the struct; where do they point?
* an array of structs - how do you allocate memory for it?
* extensive error-checking code throughout
* an opportunity for you to write the  'contract' for the `extractData` function (read about [function contracts](https://github.com/CS50DartmouthFA2025/home/blob/main/knowledge/units/contracts.md))
* detailed 'contract' for the `csvBurst` function
* in the `csvBurst` function, a 'moving pointer' approach to parsing the csv string
* chopping the csv string by dropping in null characters
* creating an array of pointers into the csv string


# Test file

- You can test your code with [this file](https://github.com/govex/COVID-19/blob/master/data_tables/vaccine_data/us_data/archive/hourly/vaccine_data_us.csv).

- To download it directly on Plink, you can use the following command:
`wget https://github.com/govex/COVID-19/blob/master/data_tables/vaccine_data/us_data/archive/hourly/vaccine_data_us.csv`

# Submission

- Make sure to commit your your `covid.c` file to the repository.
- Upload the output of the `git log` command to Canvas

