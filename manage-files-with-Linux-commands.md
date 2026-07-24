## Create a new directory

**Command:**
```bash
mkdir logs
```

**Explanation:**
`mkdir` creates a new directory — in this case, a `logs` folder inside `/home/analyst`.

**Why it matters for security work:**
Analysts often organize evidence or output into dedicated folders (e.g., separating logs from reports) to keep an investigation organized and auditable.

---

## Confirm the new directory was created

**Command:**
```bash
ls
```

**Output:**
logs notes reports temp

**Explanation:**
Running `ls` again confirms `logs` now appears in the directory listing alongside the existing folders.

---

## Remove the temp directory

**Command:**
```bash
rmdir temp
```

**Explanation:**
`rmdir` removes an empty directory — here, the `temp` folder is deleted from `/home/analyst`.

**Why it matters for security work:**
Cleaning up temporary or scratch directories is good practice to avoid leaving unnecessary files behind, especially on shared or production systems.

---

## Confirm the temp directory was removed

**Command:**
```bash
ls
```

**Output:**
logs notes reports

---

## Navigate to the notes directory

**Command:**
```bash
cd /home/analyst/notes
```

**Explanation:**
`cd` (change directory) moves you into `/home/analyst/notes`, so subsequent commands run relative to that location.

---

## Move a file to another directory

**Command:**
```bash
mv Q3patches.txt /home/analyst/reports/
```

**Explanation:**
`mv` moves (or renames) a file — here, `Q3patches.txt` is moved from `notes` into the `reports` directory.

**Why it matters for security work:**
Moving files between directories is common when organizing collected evidence, such as consolidating patch records or logs into a single reports location.

---

## Confirm the file was moved

**Command:**
```bash
ls /home/analyst/reports
```

**Output:**
Q1patches.txt Q2patches.txt Q3patches.txt

---

## Remove a file

**Command:**
```bash
rm tempnotes.txt
```

**Explanation:**
`rm` permanently deletes a file — here, `tempnotes.txt` is removed from the `notes` directory.

**Why it matters for security work:**
Knowing how to delete files precisely (and irreversibly) matters — `rm` doesn't send files to a recycle bin, so it's important to confirm the target before running it.

---

## Confirm the file was removed

**Command:**
```bash
ls
```

---

## Create an empty file

**Command:**
```bash
touch tasks.txt
```

**Explanation:**
`touch` creates a new, empty file (or updates the timestamp of an existing one) — here it creates `tasks.txt` in the `notes` directory.

**Why it matters for security work:**
`touch` is often used to quickly create placeholder files, or its timestamp behavior can be relevant when investigating whether a file was recently accessed or modified.

---

## Confirm the file was created

**Command:**
```bash
ls
```

**Output:**
tasks.txt
