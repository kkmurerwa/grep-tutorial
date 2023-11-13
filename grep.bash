# The general syntax of grep is to do it as seen below
# grep string_to_search filename

# Search through test1.txt for the word "okay"
grep okay test1.txt

# To search for a text in all the files in the current directory, use the syntax:
# grep string *
grep okay *

# Grep takes in flags such as -w to match against complete words
grep -w ok *

# The -r flag is used to search recursively
grep -r ok *

# The -i flag allows grep to ignore case
grep -i ok *

# The -v flag is used for reverse searching to return lines that don't have the search string
grep -v kay * 

# The -c flag is used to return a count of the number of times a word appears in a file
grep -c kay *

# The -n flag returns a numbered result of lines matching the search string
grep -n kay *

# The -l flag returns a list of lines that contain the search string
grep -l kay *

# Grep can be combined with other commands to perform specific tasks. To find files with a .txt extension, run
ls | grep ".txt"

# Grep also accepts regex as a search parameter. To find files with a phone number in them run
grep '\(([0-9]\{3\})\|[0-9]\{3\}\)[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' test-file

# Zgrep can be used to search in a zipped folder
zgrep pattern test-file.gz

# To save the result of a grep command to a variable, run the following command
count="$(grep -c 'kay' test1.txt)"
echo "$count"