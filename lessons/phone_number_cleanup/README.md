# Phone Number Cleanup

## Introduction

Your company recently purchased a dataset of phone numbers that they plan to send ~~spam~~ promotional texts. Unfortunately, the data is a mess. Some numbers have dashes, some have spaces, some have parentheses, and some are already correctly formatted.

The third-party, sms service your company is using requires that all phone numbers be in the format `1234567890` (no dashes, spaces, or parentheses). 

Your task is to clean up the data, so your company can ~~annoy people~~ change the world!

## Requirements

`solution.sh` should `echo` output containing all the phone numbers in the correct format, one per line.

A phone number is correctly formatted if it is a single line of exactly 10 digits and no other characters.

The phone numbers should remain in the same order as in the input file.

You should leave an empty line at the end of the file.

We'll check the results by hashing the output and comparing it to the expected hash.

### Example

Given the following input:

```
(111)111-1111
222-2222222
333 333 3333
(444-4 4 4444---4
```

Your `solution.sh` should output:

```
1111111111
2222222222
3333333333
4444444444

```