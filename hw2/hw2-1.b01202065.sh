wget https://ceiba.ntu.edu.tw/course/6d0f76/content/MYJ1030101.clean.txt
tr -d '\r' <  MYJ1030101.clean.txt > MYJ1030101.clean.standard.txt
tr ' ' '\n' < MYJ1030101.clean.standard.txt > MYJ1030101.clean.one-word.txt
sort MYJ1030101.clean.one-word.txt >  MYJ1030101.clean.one-word.sort.txt
uniq -c MYJ1030101.clean.one-word.sort.txt > b01202065.txt
