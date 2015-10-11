wget -N https://ceiba.ntu.edu.tw/course/6d0f76/content/1001_chinatimes.txt 
wget -N https://ceiba.ntu.edu.tw/course/6d0f76/content/jieba.R
cat 1001_chinatimes.txt | Rscript jieba.R | tr '\n' ' ' > b01202065.seg 
cat b01202065.seg | tr ' ' '\n' | sort | uniq -c | sort -r > b01202065.csv
