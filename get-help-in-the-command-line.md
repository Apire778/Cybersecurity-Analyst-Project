## Get a short description of a command

**Command:**
```bash
whatis cat
```

**Output:**
cat (1) - concatenate files and print on the standard output
**Explanation:**
`whatis` gives a one-line summary of what a command does — useful for a quick reminder without opening the full manual.

**Why it matters for security work:**
When reviewing an unfamiliar script or command history during an investigation, `whatis` is a fast way to check what an unrecognized command does before digging deeper.

---

## Get detailed documentation on a command

**Command:**
```bash
man cat
```

**Output:**
CAT(1) User Commands CAT(1)

NAME
cat - concatenate files and print on the standard output

SYNOPSIS
cat [OPTION]... [FILE]...

DESCRIPTION
Concatenate FILE(s) to standard output.
With no FILE, or when FILE is -, read standard input.

   -A, --show-all
          equivalent to -vET

   -b, --number-nonblank
          number nonempty output lines, overrides -n

   -e     equivalent to -vE
**Explanation:**
`man` (manual) opens the full documentation for a command, including all available options/flags. The `--More--` prompt means the manual page continues beyond what's shown — you'd press space or `q` to scroll/quit.

**Why it matters for security work:**
`man` pages are the authoritative reference for exactly what a command and its flags do — critical when you need to understand precisely how a command was used, rather than guessing from memory.

---

## Search for a command by description

**Command:**
```bash
apropos "first part of file"
```

**Output:**
Head
**Explanation:**
`apropos` searches command descriptions for a keyword, helping you find a command when you know what you want to do but not its exact name. Here, searching for "first part of file" surfaces `head`.

**Why it matters for security work:**
This is useful when you know the *outcome* you need (e.g., "see the first few lines of a huge log file") but can't recall the exact command — a faster path than searching online.

---

## Look up options for useradd

**Command:**
```bash
man useradd
```

**Output:**
-e
**Explanation:**
Reviewing the full `man useradd` output shows the `-e` option, which sets an expiration date for a user account.

**Why it matters for security work:**
The `-e` (expiration date) option is especially relevant for security — it's how you'd provision a temporary or contractor account that automatically expires, reducing the risk of stale/forgotten access.

---

## Look up a command's description

**Command:**
```bash
whatis rmdir
```

**Output:**
---

## Find the command to create a new group

**Command:**
```bash
apropos "create a new group"
```

**Output:**

**Explanation:**
Searching by description surfaces `groupadd` as the command for creating a new group.

**Why it matters for security work:**
Same idea as above — `apropos` is a quick way to discover the right group-management command without needing to already know its name.
