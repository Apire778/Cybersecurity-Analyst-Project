try:
     with open ('auth.log', 'r') as file:
         counts = {}
         for line in file:
             if 'FAILED' in line:
                 try:
                     words = line.split()
                     last_word = words[-1]
                     ip = last_word.split('=')[1]
                     counts[ip] = counts.get(ip, 0) + 1
                 except (IndexError, ValueError):
                     print(f"Skipping malformed line: {line.strip()}")
                     continue
     print(counts)
     print("=== Suspicious IPs (5 or more failed attempts) ===")
     for ip, count in counts.items():
        if count >= 5:
            print(f"{ip}: {count} failed attempts")
except FileNotFoundError:
    print("Error: Counld not find 'auth.log'. Please check the file name and try again.")
