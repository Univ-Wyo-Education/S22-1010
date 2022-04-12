
m4_include(../../../setup.m4)

# Lecture 23 - More on Data Cleanup 

Let's take a close look at the code for data cleanup.

1. Input
2. Discarding nonexistent data. - The first cleanup step.
3. Fixing Columns of data.
4. Fix Strings.

5. Generating one-hot-encoding

0. Some Graphs
0. Saving data - Output

Your lab...
Add in some sections - add some graphs.

<div class="pagebreak"></div>

## Part 1 - read data.

File: lab-11_input.py

```
m4_include(lab-11_input.py.nu)
```

<div class="pagebreak"></div>

## Part 2 - First cleanup.

Get rid of columns you don't need at all.  Get rid of missing data.

File: lab-11_first_cleanup.py

```
m4_include(lab-11_first_cleanup.py.nu)
```

<div class="pagebreak"></div>

## Part 3 - Second cleanup.

Get rid of Text in numeric fields.

File: lab-11_text_in_fields.py

```
m4_include(lab-11_text_in_fields.py.nu)
```

<div class="pagebreak"></div>

## Part 4 - Fix strings

Convert numbers, get rid of more missing data.

File: lab-11_numbers_and_missing_data.py

```
m4_include(lab-11_numbers_and_missing_data.py.nu)
```

<div class="pagebreak"></div>

## Part 5 - Km to Miles (And 1st part of Lab Data Cleanup)

This is the first part where you have some work to do in the data cleanup.

File: lab-11_km_to_miles.py

```
m4_include(lab-11_km_to_miles.py.nu)
```

<div class="pagebreak"></div>

## Part 6 - One hot encoding

This is the second part where you have some work to do.

File:lab-11_one_hot.py

```
m4_include(lab-11_one_hot.py.nu)
```

<div class="pagebreak"></div>

## Part 7 - Plot some stuff.

This is the third part where you have some work to do in the data cleanup.

File: lab-11_plot_stuff.py

```
m4_include(lab-11_plot_stuff.py.nu)
```











<div class="pagebreak"></div>

## Your Code to start with for the lab.

This code is in the lab pdf also - with a link to download your file.

File: lab-11_start.py

```
m4_include(lab-11_start.py.nu)
```




