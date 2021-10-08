log_file = open("um-server-01.txt") # open the text file and save it to a log_file variable


def sales_reports(log_file): # define a function that uses the log data as a parameter
    for line in log_file:   # for loop to iterate over the log lines
        line = line.rstrip() # remove trailing spaces from each line and saves it in the 'line' variable
        day = line[0:3]  # extract the day of week by accessing the first index (0) and slicing out the first three characters; saved it in a variable.
        if day == "Tue": # check if the sliced value is "Tue".
            print(line)  # if condition -- namely, day is "Tue" -- holds true, print the line to the console.


sales_reports(log_file)  # Run the function, which displays log lines from Tuesday


# Change the script to display sales info for Monday instead of Tuesday.

log_file = open("um-server-01.txt") 


def sales_reports(log_file):
    for line in log_file:   
        line = line.rstrip()
        day = line[0:3] 
        if day == "Mon":
            print(line)


sales_reports(log_file)