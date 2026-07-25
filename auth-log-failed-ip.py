with open ('auth.log', 'r') as file:
    counts = {}
    for line in file:
        if 'FAILED' in line:
             words = line.split()
             last_word = words[-1]
             ip = last_word.split('=')[1]
             counts[ip] = counts.get(ip, 0) + 1
    print(counts)
