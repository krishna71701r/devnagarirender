import csv
f=open('customencoding.csv','r') 
dat=csv.reader(f)

for i in dat:
    print(f'{i[0].strip()}:\n    mov si , {int(i[1].strip())*60+2}\n    jmp .next')