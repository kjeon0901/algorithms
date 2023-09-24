# 문제 
https://www.codetree.ai/missions/2/problems/best-place-of-33?&utm_source=clipboard&utm_medium=text

<br>

# 풀이
```python
N = int(input())
box = []
for i in range(N):
    box.append(input().split())

end = N-3
maximum = 0

for now in range(end+1):
    for now2 in range(end+1):
        added = 0

        for i in range(3):
            for j in range(3):
                added += int(box[now+i][now2+j])

        if added > maximum:
            maximum = added
print(maximum)
```
