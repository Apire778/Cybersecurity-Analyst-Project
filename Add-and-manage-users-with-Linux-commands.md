## Add a new user

**Command:**
```bash
sudo useradd researcher9
```

**Explanation:**
`useradd` creates a new user account on the system — here, a user called `researcher9`.

**Why it matters for security work:**
Understanding how accounts are provisioned is essential when auditing who has access to a system, especially when investigating whether an account was created legitimately or by an attacker.

---

## Set the user's primary group

**Command:**
```bash
sudo usermod -g research_team researcher9
```

**Explanation:**
`usermod -g` changes a user's **primary** group — here, setting `researcher9`'s primary group to `research_team`.

**Why it matters for security work:**
Primary group membership often determines default file/folder access. Verifying group assignments helps confirm users only have access appropriate to their role (least privilege).

---

## Change file ownership

**Command:**
```bash
sudo chown researcher9 /home/researcher2/projects/project_r.txt
```

**Explanation:**
`chown` changes the owner of a file — here, `project_r.txt` (originally owned by `researcher2`) is reassigned to `researcher9`.


**Why it matters for security work:**
Unexpected ownership changes on sensitive files can be a sign of privilege escalation or unauthorized access — this is a command analysts should
---

## Delete the user

**Command:**
```bash
sudo userdel researcher9
```

**Output:**
userdel: Group researcher9 not removed because it is not the primary group of user researcher9.

**Explanation:**
`userdel` removes the user account, but here it warns that the `researcher9` group still exists — because it wasn't the user's primary group (that was set to `research_team` earlier), `userdel` doesn't automatically clean it up.

**Why it matters for security work:**
This is a good real-world lesson: deleting a user doesn't always fully clean up related artifacts (like orphaned groups). Leftover groups or files from deleted accounts can be an overlooked security gap during offboarding.

---

## Remove the leftover group

**Command:**
```bash
sudo groupdel researcher9
```

**Explanation:**
`groupdel` removes a group from the system — here, cleaning up the orphaned `researcher9` group left behind after the user was deleted.

**Why it matters for security work:**
Proper offboarding hygiene (removing users *and* any leftover groups/permissions tied to them) prevents dangling access that could be exploited later.
