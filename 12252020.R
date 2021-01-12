# https://twitter.com/data_question

# The difference between the two outputs in #RStats is?
x = "ab\bc\ndef"
print(x)
cat(x)

# Options
# A) No difference, same output from both
# B) cat() will interpret escape characters while print() won't
# C) print() will interpret escape characters while cat() won't
# D) None of above

# Answer: B
# With cat(), character strings are output as is unlike print which 
# escapes non-printable character and backlashes.

# Example:
print("\\User\\Documents")
cat("\\User\\Documents")



