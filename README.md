# Pewlett-Hackard-Analysis

This was a fun challenge and I'm very happy that we got the opportunity to dive into SQL.


## Overview
We were asked to assist the HR department of Pewlett-Hackard in taking only 6 raw data files and creating a functional database that the management can use to understand the number of employees at the company that are about to retire. This analysis will have a significant impact on how the company can better prepare for the loss of seasoned employees.

### Process

#### Step 1: Create a new database, create an ERD, create base tables, and import CSV data files.

The first step was to use the raw data CSV's and create a database consisting of 6 individual tables. To accomplish that, we first needed to examine tha data on the files and get an understanding of the data we were dealing with. We used the ERD concept to create a visual map of the data structures which helped determine what we would use for the assignment of Primary Keys and Foreign Keys. Having a visual is invaluable to saving time when typing your queries as you can use this ERD as a reference to create joins in your code.

Here is what our ERD looked like:

![](https://github.com/TONY-H83/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)

After we reviewed the ERD we knew how to create our tables using our newly learned skills in PostgreSQL. Here is an example of the schema used for the ``dept_emp`` table:
 ``CREATE TABLE dept_emp (
   emp_no INT NOT NULL,
   dept_no VARCHAR(4) NOT NULL,
   from_date DATE NOT NULL,
   to_date DATE NOT NULL,
 FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
 FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
 PRIMARY KEY (emp_no, dept_no)
);``

#### Step 2: Using data points given to us my managemant, we created new tables that only held the employee population that met the retirement criteria.

These various tables consisted of these different data points: ``emp_no``, ``first_name``, ``last_name``, ``birth_date``, ``title``, ``dept_name``
Now that we had new unique tables created, we were able to cosnsruct some joins and output usable data for the management team to see exacly how large the problem was they were facing. 

## Results

While the company has tens of thousands of employees, we were only focused on the retirement age population. After we put the data together and evaluated the outputs, it was surprising how large this group was. It was clear the company quickly needed to strategize how they can prepare for this in the future to ensure ample time was given to hire new employees and get them trained but these seasoned professionals before their retirement. 

While there are many significant aspects of this data, below are 4 points I feel will stand out the most to the management team:
> - With 72,458 employees matching the retirement age criteria, Pewlett-Hackard has 24% of their employee base about to retire.
> - 35% of the retirees are Senior Engineers. That could mean the company stands to lose a lot of experience and expertise.
> - Senior Staff will be the next hardest hit area of the company with a projected loss of 34%.
> - The mentorship program is aimed at helping train up and coming employees so the company does not lose precious continuity of their processes. This year, 1,940 employees will be selected to participate in this program.

## Summary

#### Research question #1: 
How many roles will need to be filled as the "silver tsunami" begins to make an impact?

There will be a total of 72,458 employees that are at retirement age and eligible to leave the company. That does not mean that all of those will actually retire but the company must be prepared to backfill that many employees to keep employee strength at its max.

#### Research question #2: 
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

After reviewing the data, there is a concerning low number of mentors for each one of the job classifications. There are less than 10% of the employee base that meet the criteria management is look for to participate in the mentorship program. Most importantly, the highest population of the retirees are Senior Engineers. Unfortunately, a mere 1% of the qualified mentors are in the senior engineer category. There are no qualified mentors in the Manager department but with only two retiring, it should not be a big issue to train replacements.

![](https://github.com/TONY-H83/Pewlett-Hackard-Analysis/blob/main/Mentorship%20Elgibility.png)

#### Additional queries to further assist the management team:

The first additional query I created was add a new table that listed the various titles with one column showing a count of all current employees grouped by their title. I then had to use ``count distinct`` to remove the duplicate rows and create a new table.

Lastly to get a table that had the current employees grouped by title, joined with the retiring employees.

![](https://github.com/TONY-H83/Pewlett-Hackard-Analysis/blob/main/Losses.png)


The last query I created was using the new table "extra_query". I multiplied the retiring employee count by 100 then divided that by total current employees into a new column named ``percentage_of_dept_retiring``. This will allow management to quickly see just how much of a specific department is about to retire.


![](https://github.com/TONY-H83/Pewlett-Hackard-Analysis/blob/main/LOSS%20PERCENTAGE.png)




