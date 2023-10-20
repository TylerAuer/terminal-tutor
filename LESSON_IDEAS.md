# Ideas for lessons

## Process

- Top-level TUI for selecting exercises
- Each exercise in a folder

## Things I already know that are useful to teach about

- aliases
- `cd`
- `ls`
- `pwd`
- `mv`
- `mkdir`
- `cp`
- `history`

## Things to get better at

- `sed`
- `awk`
- `find`
- `grep`
- `xargs`
- `curl`
- `jq`
- `sort`
- `cloc` / `wc`
- `head` / `tail`
- `cut`
- `tee`
- `>` / `>>` / `<` / `|` / `&` / `;`
- `if` checks
- `uniq`
- `unzip`

## Puzzle Ideas

### Directory Maze - Level 1

Build a maze out of directories and files that you have to navigate via `cd` and `ls` and `cat`

There would likely have to be some sort of "you are here" indicator. Like, a logical way to know if you are going the right direction.

Example directory structure where `room.txt` has `left`, `right`, and `forward` as contents. You keep going down the tree until you get to a room where `room.txt` says `exit`. Then you `pwd` to get the path to the exit and slice off any previous directories.

`
maze/
  room.txt
  forward/
    room.txt
    forward/
    left/
    right/
  left/
    room.txt
    forward/
    left/
    right/
  right/
    room.txt
    forward/
    left/
    right/
`

Would likely want a maze generator that generates a new maze every time you run it.

## Directory Maze - Level 2

Just like level 1, but the room.txt has a permutation of forward, left, right, and back. The first time you reach the room you follow the first direction, then the second direction, and so on.

## Directory Maze - Level 3

Just like 2 but include symlinks as a way to portal to other parts of the maze.

## Phone number clean up

Given a file with a bunch of phone numbers, clean them up so they are all in the same format and remove duplicates (`uniq`).

```
(123)456-7890
1234567890
123-456-7890
123 456 7890
```

All become `1234567890`

## Phone number clean up - Level 2

Given a file with a bunch of phone numbers, clean them up so they are all in the same format. But for invalid phone numbers, store them in a separate file

## Snake-to-camel case

Using `sed` convert a file from snake-to-camel case

## Make a file of all lines that don't fit a format

Imagine a file of company email addresses. Some include the domain, some don't. You already ran a script
that tried to send an email to everyone in the company, but each user that didn't have a domain failed.

So, generate a new file with only the users that don't have a domain, and modify their emails to include the domain

Hint `sed -n`