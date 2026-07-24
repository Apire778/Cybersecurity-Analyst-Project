## Navigate to the projects directory

**Command:**
```bash
cd projects
```

---

## List contents and permissions of the projects directory

**Command:**
```bash
ls -l
```

**Output:**
total 20
drwx--x--- 2 researcher2 research_team 4096 Oct 14 18:40 drafts
-rw-rw-rw- 1 researcher2 research_team 46 Oct 14 18:40 project_k.txt
-rw-r----- 1 researcher2 research_team 46 Oct 14 18:40 project_m.txt
-rw-rw-r-- 1 researcher2 research_team 46 Oct 14 18:40 project_r.txt
-rw-rw-r-- 1 researcher2 research_team 46 Oct 14 18:40 project_t.txt

**Explanation:**
`ls -l` shows a long listing of each file's permissions, owner, group, size, and modification date. Reading the permission string left to right: file type, owner permissions, group permissions, other permissions.

**Why it matters for security work:**
Reviewing permissions is a core part of auditing — spotting overly permissive files (like `project_k.txt` below, which is writable by everyone) is exactly the kind of misconfiguration an analyst needs to catch.

---

## Check for hidden files in the projects directory

**Command:**
```bash
ls -la
```

**Output:**
<!-- paste the actual full ls -la output here — you noted .project_x.txt was found, but the full listing should go here -->
**Explanation:**
The `-a` flag shows hidden files (those starting with `.`), which `ls -l` alone doesn't display. This revealed a hidden file, `.project_x.txt`.

**Why it matters for security work:**
Hidden files are easy to overlook but can hide anything from configuration files to malicious scripts — checking for them is standard practice during a system review.

---

## Identify files with "other" write permissions

Reviewing the `ls -l` output above, `project_k.txt` has permissions `-rw-rw-rw-`, meaning the **other** permission group has both read and write access.

**Why it matters for security work:**
Any file writable by "other" (anyone on the system) is a red flag — it means any user could modify that file, which is a common misconfiguration attackers look to exploit.

---

## Remove "other" write permission from project_k.txt

**Command:**
```bash
chmod o-w project_k.txt
```

**Explanation:**
`chmod o-w` removes the write permission for the "other" group, tightening access so only the owner and group can modify the file.

---

## Review project_m.txt permissions

**Command:**
```bash
ls -l
```

**Output:**
**Explanation:**
<!-- once you have the real output, note what the user/group/other permissions were before the fix below -->

---

## Adjust permissions on .project_x.txt

**Command:**
```bash
chmod u-w,g-w,g+r .project_x.txt
```

**Explanation:**
This command makes three changes at once: removes write access from the owner (`u-w`), removes write access from the group (`g-w`), and adds read access for the group (`g+r`) — resulting in read-only access for both the user and group, with no write access for either.

**Why it matters for security work:**
Applying the principle of least privilege — giving users and groups only the access they actually need — is one of the most fundamental security practices, and `chmod` is the tool for enforcing it on Linux systems.
